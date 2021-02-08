local facade = require"facade"
local image = require"image"
local chronos = require"chronos"
local filter = require "filter"

local unpack = table.unpack
local floor = math.floor

local _M = facade.driver()
setmetatable(_ENV, { __index = _M } )

local background = _M.solid_color(_M.color.white)

local function stderr(...)
    io.stderr:write(string.format(...))
end

--Custom Stuff
--###############################################################################################
--###############################################################################################
--###############################################################################################
--###############################################################################################
--###############################################################################################

--Parâmteros de número máximo de iterações e precisão da solução na bisseção
local MAX_ITR = 100
local eps = 1e-4

--Retorna sinal do número (0 se num==0)
function sign(num)

    if num ~= 0 then
        return num/abs(num)
    else
        return 0.0
    end
end 

--Calcular solução de f(x) = y usando bisseção no intervalo [a,b]
function bissection(f, y, a, b, MAX_ITR, eps)

    --Escolhendo função f(x) - y
    local f2 = function(x) return (f(x) - y) end

    --Setar intervalo inicial
    local xa = a
    local xb = b

    for i = 1,MAX_ITR do 

        --Avaliar função nos extremos e no meio do intervalo
        local val_a = f2(xa)
        local val_b = f2(xb)
        local val_ab2= f2((xa+xb)/2)

        --Condição de parada
        if math.abs(val_ab2) < eps then 
            return (xa+xb)/2
        end

        --Substituir ponto do intervalo
        if sign(val_a * val_ab2) > 0 then

            xa = (xa+xb)/2
        elseif sign(val_b * val_ab2) > 0 then

            xb = (xa+xb)/2
        else
             
            print("ERRO NA BISSECAO")
            return nil
        end
    end
end

--Calcular pontos da bezier de ordem n,j, recursivamente, com  
--pontos de controle cpoints em t
function evalBezier(n, j, cpoints, t, w)

    local s = 1 - t

    if n == 0 then 

        --Calcular os w's, levando em conta {1,w1,1}
        local w_value = 1
        --Só multiplica por w no j=1
        if #cpoints==6 and j==1 then w_value = w end
        --Retornar ponto original
        return w_value*cpoints[2*j+1] , w_value*cpoints[2*j+2], w_value
    else
        --Calcular recursivamente os pontos
        local x1, y1, w1 = evalBezier(n-1, j, cpoints, t, w)
        local x2, y2, w2 = evalBezier(n-1, j+1 ,cpoints, t, w)
       return s*x1 + t*x2, s*y1 + t*y2, s*w1 + t*w2
    end
end

--Calcular soluções x(t) = 0 e y(t) = 0 em uma bezier linear
function smart_linear_solver(cpoints)

    local t_values = {}

    local x0, yo, x0, x1 = 0
    x0=cpoints[1]; y0=cpoints[2];
    x1=cpoints[3]; y1=cpoints[4];

    local t_x = x0/(x0 - x1)
    local t_y = y0/(y0 - y1)

    --Ver se as raizes estão no intervalo [0,1]
    for k,v in pairs({t_x, t_y}) do 

        if v >=0 and v <=1 then table.insert(t_values, v) end
    end 

    --Ordenar valores das soluções
    table.sort(t_values, function(a,b) return a < b end)

    --Remover elementos repetidos
    local new_t_values = {t_values[1]}
    for idx = 2, #t_values do 

        if t_values[idx] ~= t_values[idx-1] then 

            table.insert( new_t_values, t_values[idx])
        end
    end

    return new_t_values
end

--Calcular soluções x(t) = 0 e y(t) = 0 em uma bezier quadrática
function smart_quadratic_solver(cpoints)

    local t_values = {}

    --Bhaskara estavel
    local root1 = function(a, b, c) return (-b-sign(b)*math.sqrt(b*b-a*c))/(a) end
    local root2 = function(a, b, c) return c/(-b-sign(b)*sqrt(b*b-a*c)) end

    local a_x = cpoints[1] - 2*cpoints[3] + cpoints[5]
    local b_x = cpoints[3] - cpoints[1]
    local c_x = cpoints[1]

    local a_y = cpoints[2] - 2*cpoints[4] + cpoints[6]
    local b_y = cpoints[4] - cpoints[2]
    local c_y = cpoints[2]


    local t_x1 = root1(a_x, b_x, c_x)
    local t_x2 = root2(a_x, b_x, c_x)

    local t_y1 = root1(a_y, b_y, c_y)
    local t_y2 = root2(a_y, b_y, c_y)

    --Ver se as raizes estão no intervalo [0,1]
    for k, v in pairs({t_x1, t_x2, t_y1, t_y2}) do 

        if v >=0 and v <=1 then table.insert(t_values, v) end
    end

    --Ordenar as soluções
    table.sort(t_values, function(a,b) return a < b end)
    
    --Remover elementos repetidos
    local new_t_values = {t_values[1]}
    for idx = 2, #t_values do 

        if t_values[idx] ~= t_values[idx-1] then 

            table.insert( new_t_values, t_values[idx])
        end
    end

    return new_t_values
end

--Solução para derivada 0 de bezier racional, usando expressão analitica
function smart_rational_zero_der(cpoints, w)

    local t_values = {}

    local x0, y0, x1, y1, x2, y2 = 0

    x0=cpoints[1];y0=cpoints[2];
    x1=cpoints[3];y1=cpoints[4];
    x2=cpoints[5];y2=cpoints[6];

    local root1 = function(a, b, c) return (-b-sign(b)*math.sqrt(b*b-a*c))/(a) end
    local root2 = function(a, b, c) return c/(-b-sign(b)*sqrt(b*b-a*c)) end

    --Coeficientes da eq do 2 grau (numerador 0)
    local a_x = (x0-x2)*(w-1)
    local b_x = (x0 - 2*w*x0 + 2*x1 - x2)/2
    local c_x = w*x0 - x1 

    local a_y = (y0-y2)*(w-1)
    local b_y = (y0 - 2*w*y0 + 2*y1 - y2)/2
    local c_y = w*y0 - y1 

    local t_x1 = root1(a_x, b_x, c_x)
    local t_x2 = root2(a_x, b_x, c_x)

    local t_y1 = root1(a_y, b_y, c_y)
    local t_y2 = root2(a_y, b_y, c_y)

    --Verificar se soluções estão no intervalo [0,1]
    for k, v in pairs({t_x1, t_x2, t_y1, t_y2}) do 

        if v >=0 and v <=1 then table.insert(t_values, v) end
    end

    --Ordenar valores
    table.sort(t_values, function(a,b) return a < b end)

    --Remover elementos repetidos
    local new_t_values = {t_values[1]}
    for idx = 2, #t_values do 

        if t_values[idx] ~= t_values[idx-1] then 

            table.insert( new_t_values, t_values[idx])
        end
    end

    return new_t_values

end

--Calcular pontos de controle da derivada de uma bezier
function der_controls(n, cpoints)

    local der_cpoints = {}

    for i = 1,n do 

        --Pontos de controle n*(Pj+1-Pj)
        local xi = n*(cpoints[2*i+1] - cpoints[2*i-1])
        local yi = n*(cpoints[2*i+2] - cpoints[2*i])

        table.insert( der_cpoints, xi)
        table.insert( der_cpoints, yi)
    end

    return der_cpoints
end

--Reparametrizar bezier no intervalo [r,s] com k sendo o k-ésimo ponto de controle
--n o grau e j=0, obrigatoriamente na primeira chamada da função 
function reparam_bezier(n, j, k, r, s, cpoints, w)

    local t = 0
    --Valores dos coeficientes que multiplicam os pontos
    if k+1 <= n then t=r else t=s end

    if n == 0 then 

        --Calcular os valores de w
        local w_value = 1
        if #cpoints==6 and j==1 then w_value = w end
        --Retornar ponto original
        return cpoints[2*j+1], cpoints[2*j+2], w_value
    else

        --Achar os pontos recursivamente
        local x1, y1, w1 = reparam_bezier(n-1, j, k, r, s, cpoints,w)
        local x2, y2, w2= reparam_bezier(n-1, j+1, k, r ,s, cpoints,w)
       return (1-t)*x1 + t*x2, (1-t)*y1 + t*y2, (1-t)*w1 + t*w2
    end
end

--Criar bounding box
Bbox = {coords={}}

--Construtor do bounding box
function Bbox:new(x0, y0, xf, yf)

    self.__index=self

    local coords = {}

    coords[1]=x0; coords[2]=y0
    coords[3]=xf; coords[4]=yf

    return setmetatable({coords=coords}, self)
end

--Teste do bounding box, precisa satisfazer se houver intercessão
function Bbox:bbTest(x, y)

    --Calcular y maximo e minimo
    local y_max = math.max(self.coords[2], self.coords[4])
    local y_min = math.min(self.coords[2], self.coords[4])

    local x_min = math.min(self.coords[1], self.coords[3])

    --Conferir se está fora do bounding box
    if y < y_min or y >= y_max then

        return -1.0
    elseif x <= x_min then
        
        return -1.0
    else 

        return 1.0
    end
end

--Segmento de reta monótono
local AMLine = {cpoints={}, bbox={}, a=0, b=0, c=0}

--Construtor de AMLine
function AMLine:new(x0, y0, x1, y1)

    self.__index = self

    --Calcular (a, b, c) da reta
    local a = y1 - y0
    local b = x0 - x1
    local c = -(a*x0 + b*y0)

    --Pontos de controle da reta (não muito util)
    local cpoints = {}
    cpoints[1] = x0; cpoints[2] = y0; cpoints[3] = x1; cpoints[4] = x1

    --Criar bounding box
    local bbox = Bbox:new(x0, y0, x1, y1)

    return setmetatable({cpoints=cpoints, bbox=bbox, a=a, b=b, c=c}, self)
end


--Teste de intercessão de AMLine
function AMLine:insideTest(x, y)

    --Teste se o ponto está dentro do bounding box
    local bbtest_status = self.bbox:bbTest(x,y)

    --print(x,y)
    --Se o teste do bounding box der certo 
    if bbtest_status == 1.0 then 

        --Teste de intercessão, a esquerda da reta tem sinal negativo, a direita positivo e na reta é 0
        local value = sign(self.a)*(self.a * x + self.b * y + self.c)

        if sign(value) ==1.0 then 

            --Multiplicar pelo sinal para contar as intercessões
            return sign(self.a)
        else

            return 0.0
        end
    else

        return 0.0
    end
end

--Segmento monótono de uma quadrática
local AMQuad = {cpoints={}, bbox={},w1=0}

--Construtor da quadrática monótona
function AMQuad:new(x0, y0, x1, y1, w1, x2, y2)

    self.__index = self

    --Criar pontos de controle
    local cpoints = {x0, y0, x1, y1, x2, y2}

    --Criar bounding box
    local bbox = Bbox:new(x0, y0, x2, y2)

    return setmetatable({cpoints=cpoints, bbox=bbox, w1=w1}, self)
end

function AMQuad:intTest(x,y)

    --Teste da bounding box
    local bbtest_status = self.bbox:bbTest(x,y)

    --Se passou no teste do bounding box
    if bbtest_status == 1.0 then 
        
        --Criar função anonima e fazer bisseção
        local f_bezier = function(t) x_t, y_t, w_t = evalBezier(2, 0, self.cpoints, t, self.w1); return y_t/w_t end
        t_root = bissection(f_bezier, y, 0, 1, MAX_ITR, eps)

        if t_root == nil then return -1.0 end

        --Calcular (x,y) da intercessão
        x_t, y_t, w_t = evalBezier(2, 0, self.cpoints, t_root, self.w1)

        --Ver se há intercessão ou não 
        if x_t/w_t < x then 
            return 1.0
        else 
            return -1.0
        end

    else 

        return -1.0
    end

end

--Segmento monótono de uma cubíca
local AMCub = {cpoints={}, bbox={}}

function AMCub:new(x0, y0, x1, y1, x2, y2, x3, y3)

    self.__index = self

    --Criar pontos de controle
    local cpoints = {x0, y0, x1, y1, x2, y2, x3, y3}

    --Criar bounding box
    local bbox = Bbox:new(x0, y0, x3, y3)

    return setmetatable({cpoints=cpoints, bbox=bbox}, self)
end

function AMCub:intTest(x,y)

    --Teste da bounding box
    local bbtest_status = self.bbox:bbTest(x,y)

    --Se passou no teste do bounding box
    if bbtest_status == 1.0 then 

        --Criar função anonima e fazer bisseção
        local f_bezier = function(t) x_t, y_t = evalBezier(3, 0, self.cpoints, t, 1); return y_t end
        t_root = bissection(f_bezier, y, 0, 1, MAX_ITR, eps)

        --Calcular (x,y) da intercessão
        x_t, y_t = evalBezier(3, 0, self.cpoints, t_root)

        --Ver se há intercessão ou não 
        if x_t < x then 
            return 1.0
        else 
            return -1.0
        end

    else 

        return -1.0
    end

end

--Quadrática
local AQuad = {cpoints={}, w=0, segments={}}

function AQuad:new(x0, y0, x1, y1, w, x2, y2)

    self.__index = self

    local cpoints = {x0, y0, x1, y1, x2, y2}

    local segments = {}

    --Calcular valores de derivada 0, para fazer reparametrização
    --Levar em conta os casos real e integral
    local tvalues = {}
    if w ==1 then 
        t_values = smart_linear_solver(der_controls(2, cpoints))
    else
        
        t_values = smart_rational_zero_der(cpoints, w)
    end

    --Colocar t=0 e t=1
    table.insert( t_values, 1, 0)
    table.insert( t_values, 1)

    --Dividir cada intervalo 
    for idx = 2,#t_values do

        --Calcular os valores de cada ponto de controle
        local x0, y0, w0 = reparam_bezier(2, 0, 0, t_values[idx-1], t_values[idx], cpoints, w)
        local x1, y1, w1 = reparam_bezier(2, 0, 1, t_values[idx-1], t_values[idx], cpoints, w)
        local x2, y2, w2= reparam_bezier(2, 0, 2, t_values[idx-1], t_values[idx], cpoints, w)

        --Realizar transformacao projetiva para fazer w0=w2=1 e encontrar os pontos de controle
        local lambda = math.sqrt(w2/w0)

        x0 = lambda*lambda*x0/w2; y0 = lambda*lambda*y0/w2; w0 = lambda*lambda*w0/w2
        x1 = (x1)/(w1); y1 = (y1)/(w1); w1 = lambda*w1/w2
        x2 = x2/w2; y2 = y2/w2; w2 = w2/w2

        local new_mseg = AMQuad:new(x0,y0,x1,y1,w1,x2,y2)
        table.insert(segments, new_mseg)
    end

    return setmetatable({cpoints=cpoints, w=w, segments=segments}, self)
end

function AQuad:insideTest(x,y) 

    local winding_num = 0

    for idx, seg in pairs(self.segments) do

        local int_status = seg:intTest(x,y)

        --Levar em conta orientação da curva para contar intercessões
        --Como a curva é monótona, basta achar a diferença dos y dos extremos
        local sign_a = sign(seg.bbox.coords[4] - seg.bbox.coords[2])
        if int_status == 1.0 then winding_num = winding_num + 1*sign_a end
    end

    return winding_num

end

--Cubíca
local ACub = {cpoints={}, segments={}}

function ACub:new(x0, y0, x1, y1, x2, y2, x3, y3)

    self.__index = self

    local cpoints = {x0, y0, x1, y1, x2, y2, x3, y3}

    local segments = {}

    --Calcular valores de derivada 0, para fazer reparametrização
    local t_values = smart_quadratic_solver(der_controls(3, cpoints))

    --Colocar t=0 e t=1
    table.insert( t_values, 1, 0)
    table.insert( t_values, 1)

    --Dividir cada intervalo 
    for idx = 2,#t_values do

        --Calcular os valores de cada ponto de controle
        local x0,y0 = reparam_bezier(3, 0, 0, t_values[idx-1], t_values[idx], cpoints, 1)
        local x1,y1 = reparam_bezier(3, 0, 1, t_values[idx-1], t_values[idx], cpoints, 1)
        local x2,y2 = reparam_bezier(3, 0, 2, t_values[idx-1], t_values[idx], cpoints, 1)
        local x3,y3 = reparam_bezier(3, 0, 3, t_values[idx-1], t_values[idx], cpoints, 1)

        local new_mseg = AMCub:new(x0, y0, x1, y1, x2, y2, x3, y3)
        table.insert(segments, new_mseg)
    end

    return setmetatable({cpoints=cpoints, segments=segments}, self)
end

function ACub:insideTest(x,y) 

    local winding_num = 0

    for idx, seg in pairs(self.segments) do

        local int_status = seg:intTest(x,y)

        --Levar em conta orientação da curva para contar intercessões
        --Como a curva é monótona, basta achar a diferença dos y dos extremos
        local sign_a = sign(seg.bbox.coords[4] - seg.bbox.coords[2])
        if int_status == 1.0 then winding_num = winding_num + 1*sign_a end
    end

    return winding_num

end






--End of custom stuff
--###############################################################################################
--###############################################################################################
--###############################################################################################
--###############################################################################################
--###############################################################################################

local function sample(accelerated, x, y)
    -- This function should return the color of the sample
    -- at coordinates (x,y).
    -- Here, we simply return r = g = b = a = 1.
    -- It is up to you to compute the correct color!

    local r_scene = 0
    local g_scene = 0
    local b_scene = 0

    local intersections = 0

    --Iterar em cada shape
    for idx, paths in pairs(accelerated) do 

        local w_rule = paths.w_rule
        local color = paths.color

        local r, g, b, a = table.unpack(color)

        local winding_num = 0

        --Iterar em cada segmento
        for idx2, comps in pairs(paths.content) do 

            --Calcular o valor das intercessões e somar
            local winding = comps:insideTest(x,y)
            winding_num = winding_num + winding

        end

        local value = 0

        --Levar em conta a windin rule
        if w_rule == winding_rule.non_zero then value = winding_num~=0 and 1 or 0; end
        if w_rule == winding_rule.odd then value = winding_num%2 end

        --Sobreescrever valores caso exista intercessão 
        if value ==1 and {r,g,b}~=0 then
            
            intersections = intersections + 1
            r_scene = r
            g_scene = g
            b_scene = b
        end

    end

    --Se não houver intercessão, desenhar o fundo branco
    if intersections == 0 then r_scene=1; g_scene=1; b_scene=1 end

    return r_scene, g_scene, b_scene, 1
end

local function parse(args)
	local parsed = {
		pattern = nil,
		tx = nil,
		ty = nil,
        linewidth = nil,
		maxdepth = nil,
		p = nil,
		dumptreename = nil,
		dumpcellsprefix = nil,
	}
    local options = {
        { "^(%-tx:(%-?%d+)(.*))$", function(all, n, e)
            if not n then return false end
            assert(e == "", "trail invalid option " .. all)
            parsed.tx = assert(tonumber(n), "number invalid option " .. all)
            return true
        end },
        { "^(%-ty:(%-?%d+)(.*))$", function(all, n, e)
            if not n then return false end
            assert(e == "", "trail invalid option " .. all)
            parsed.ty = assert(tonumber(n), "number invalid option " .. all)
            return true
        end },
        { "^(%-p:(%d+)(.*))$", function(all, n, e)
            if not n then return false end
            assert(e == "", "trail invalid option " .. all)
            parsed.p = assert(tonumber(n), "number invalid option " .. all)
            return true
        end },
        { ".*", function(all)
            error("unrecognized option " .. all)
        end }
    }
    -- process options
    for i, arg in ipairs(args) do
        for j, option in ipairs(options) do
            if option[2](arg:match(option[1])) then
                break
            end
        end
    end
    return parsed
end

function _M.accelerate(scene, window, viewport, args)
    local parsed = parse(args)
    stderr("parsed arguments\n")
    for i,v in pairs(parsed) do
        stderr("  -%s:%s\n", tostring(i), tostring(v))
    end
    -- This function should inspect the scene and pre-process it into a better
    -- representation, an accelerated representation, to simplify the job of
    -- sample(accelerated, x, y).
    -- Here, we simply print some info about the scene_data and return the
    -- unmodified scene.
    scene = scene:windowviewport(window, viewport)
    stderr("scene xf %s\n", scene:get_xf())

    local accel = {}

    scene:get_scene_data():iterate{
        painted_shape = function(self, winding_rule, shape, paint)
            stderr("painted %s %s %s\n", winding_rule, shape:get_type(), paint:get_type())
            stderr("  xf s %s\n", shape:get_xf())

            local shape_xf = shape:get_xf():transformed(scene:get_xf())

            local pdata = shape:get_path_data()

            local path_components = {content = {}, w_rule=winding_rule, color=paint:get_solid_color(), begin_s={}, end_s={}}
            --Iterar em cada componente do path
            pdata:iterate(filter.make_input_path_f_xform(shape_xf,{

                begin_contour = function(self, x1, y1)
                    print('begin', x1, y1)
                    path_components.begin_s = {x1, y1}
                end,

                linear_segment = function(self, x1, y1, x2, y2)
                    print('line', x1, y1, x2, y2)
                    table.insert(path_components.content, AMLine:new(x1, y1, x2, y2))
                end,

                quadratic_segment = function(self, x1, y1, x2, y2, x3, y3)
                    print('quadratic', x1, y1, x2, y2, x3, y3)
                    table.insert(path_components.content, AQuad:new(x1, y1, x2, y2, 1, x3, y3))
                end,

                rational_quadratic_segment = function(self, x1, y1, x2, y2, w2, x3, y3)
                    print('rational', x1, y1, x2, y2, w2, x3, y3)
                    table.insert(path_components.content, AQuad:new(x1, y1, x2, y2, w2, x3, y3))
                end,

                cubic_segment = function(self, x1, y1, x2, y2, x3, y3, x4, y4)
                    print('cubic', x1, y1, x2, y2, x3, y3, x4, y4)
                    table.insert(path_components.content, ACub:new(x1, y1, x2, y2, x3, y3, x4, y4))
                end,

                end_closed_contour = function(self, x1, y1)
                    print('end closed', x1, y1)
                    path_components.end_s = {x1, y1}
                end,

                end_open_contour = function(self, x1, y1)
                    print('end open', x1, y1)
                    path_components.end_s = {x1, y1}
                end,

            }))

            --Se o começo e o fim não forem iguais, ligar por uma reta
            local x_begin, y_begin = table.unpack(path_components.begin_s)
            local x_end, y_end = table.unpack(path_components.end_s)

            if x_begin ~= x_end or y_begin ~= y_end then 

                table.insert(path_components.content, AMLine:new(x_end, y_end, x_begin, y_begin))
            end

            table.insert(accel, path_components)

        end,

    }
    -- It is up to you to do better!
    return accel
end

function _M.render(accelerated, window, viewport, file, args)
    local parsed = parse(args)
    stderr("parsed arguments\n")
    for i,v in pairs(parsed) do
        stderr("  -%s:%s\n", tostring(i), tostring(v))
    end
local time = chronos.chronos()
    -- Get viewport to compute pixel centers
    local vxmin, vymin, vxmax, vymax = unpack(viewport, 1, 4)
    local width, height = vxmax-vxmin, vymax-vymin
    assert(width > 0, "empty viewport")
    assert(height > 0, "empty viewport")
    -- Allocate output image
    local img = image.image(width, height, 4)
    -- Render
    for i = 1, height do
stderr("\r%5g%%", floor(1000*i/height)/10)
        local y = vymin+i-1.+.5
        for j = 1, width do
            local x = vxmin+j-1+.5
            img:set_pixel(j, i, sample(accelerated, x, y))
        end
    end
stderr("\n")
stderr("rendering in %.3fs\n", time:elapsed())
time:reset()
    -- Store output image
    image.png.store8(file, img)
stderr("saved in %.3fs\n", time:elapsed())
end

return _M
