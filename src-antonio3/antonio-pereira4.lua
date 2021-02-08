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

--Wraping functions
local wrap_func = {
    [spread.clamp] = function(t)
        return math.min(1, math.max(0, t))
    end,
    
    [spread.mirror] = function(t)
        return 2*math.abs(t/2 - math.floor((t+1)/2))
    end,

    [spread.transparent] = function(t)
        if t < 0 or t >1 then 
            return nil
        else
            return t
        end
    end,

    [spread.wrap] = function(t)
        return t- math.floor(t)
    end,
}
function pad_color(t)
    return math.min(1, math.max(0, t))
end

--Repeat
function repeat_color(t)
    return t - math.floor(t)
end

--Reflect
function reflect_color(t)
    return 2*math.abs(t/2 - math.floor((t+1)/2))
end

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
local Bbox = {coords={}}

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

--Testar intercessão a direita da bouding box
function Bbox:isRight(x,y)

    local x_max = math.max(self.coords[1], self.coords[3])

    if x > x_max then
        return 1.0
    else
        return 0.0
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

        --Se estiver a direita da bbox, tem intercessão 
        if self.bbox:isRight(x,y) == 1 then return sign(self.a) end
        
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

        --Se estiver a direita da bbox, tem intercessão 
        if self.bbox:isRight(x,y) == 1 then return 1.0 end
        
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
        
        --Se estiver a direita da bbox, tem intercessão 
        if self.bbox:isRight(x,y) == 1 then return 1.0 end

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
local AQuad = {cpoints={}, w=0, segments={}, bbox}

function AQuad:new(x0, y0, x1, y1, w, x2, y2)

    self.__index = self

    local x_min, y_min = 1e4, 1e4
    local x_max, y_max = -1e4, -1e4

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

        --Calcular extremos
        x_min = math.min(x_min, x0, x2); y_min = math.min(y_min, y0, y2);
        x_max = math.max(x_max, x0, x2); y_max = math.max(y_max, y0, y2);
    end

    --Armazenar extremos
    local bbox = Bbox:new(x_min, y_min, x_max, y_max)
    
    return setmetatable({cpoints=cpoints, w=w, segments=segments, bbox=bbox}, self)
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
local ACub = {cpoints={}, segments={}, bbox}

function ACub:new(x0, y0, x1, y1, x2, y2, x3, y3)

    self.__index = self

    local x_min, y_min = 1e4, 1e4
    local x_max, y_max = -1e4, -1e4

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

        --Calcular extremos
        x_min = math.min(x_min, x0, x3); y_min = math.min(y_min, y0, y3);
        x_max = math.max(x_max, x0, x3); y_max = math.max(y_max, y0, y3);

    end
    
    --Armazenar extremos
    local bbox = Bbox:new(x_min, y_min, x_max, y_max)

    return setmetatable({cpoints=cpoints, segments=segments, bbox=bbox}, self)
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

--Criar estrutura para os círculos
local AcceleratedCircle = {cx=0, cy=0, radius=0, xf, quad_matrix}

--Construtor
function AcceleratedCircle:new(cx, cy, radius, xf)

    self.__index = self

    --Compor a transformação com uma translação e um scale, para centrar o círculo e transformar em raio 1
    local S = projectivity(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0/radius)
    local xf_transformed = xf*translation(cx, cy)*S

    --Calcular matriz da forma quadrática da cônica
    local A = xf_transformed:inverse()
    local P = projectivity(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, -1)
    local new_xf = A:transpose()*P*A

    return setmetatable({cx=cx, cy=cy, radius=radius, xf=xf_translated, quad_matrix=new_xf}, self)
end

function AcceleratedCircle:insideTest(x, y)

    --Substituir o ponto (x,y) na forma quadrática da cônica
    local xt, yt, wt = self.quad_matrix:apply(x, y, 1)
    local val = x*xt + y*yt + 1*wt

    --Sinal positivo de val_sign significa dentro da cônica
    local val_sign = -sign(val)

    if val_sign == -1 then 
        return 0
    else
        return val_sign
    end
end

--Armazenar infos das tintas
--Cor sólida
local ASolidColor = {color={}}

function ASolidColor:new(color)

    self.__index = self
    return setmetatable({color=color}, self)
end

function ASolidColor:get_color(x,y)

    return self.color
end

--Gradiente linear
local ALineGradient = {x1=0, y1=0, x2=0, y2=0, aramp, spread, abc_transform}

function ALineGradient:new(x1, y1, x2, y2, ramp, paint_xf, opacity)

    self.__index = self

    --Calcular coeficientes abc da transformação
    local theta = math.atan2((y2-y1)/(x2-x1))
    
    local s = math.sin(theta)
    local c = math.cos(theta)

    local T0 = projectivity(c, s, -c*x1-y1*s, -s, c, s*x1-c*y1, 0, 0, 1)
    local x2_new, y2_new = T0:apply(x2, y2)
    local T1 = projectivity(1/x2_new, 0, 0, 0, 1, 0, 0, 0, 1)
    local Tn = T1*T0

    local ninja_xf =  Tn*paint_xf:inverse()

    local a,b,c = ninja_xf[1], ninja_xf[2], ninja_xf[3]
    local abc_transform = {a,b,c}

    --Calcular rampa de cores amostrada
    local aramp={}

    --Informações da rampa
    local spread_ramp = ramp:get_spread()
    local offsets = {}
    local colors = {}
    for i, stop in ipairs(ramp:get_color_stops()) do 

        table.insert(offsets, stop:get_offset())
        
        --Colocar opacidade
        r,g,b,a = table.unpack(stop:get_color())
        table.insert(colors, {r,g,b,opacity*a})
    end

    --Adicionar bordas
    table.insert(colors, 1, colors[1])
    table.insert(colors, colors[#colors])
    table.insert(offsets, 1, 0)
    table.insert(offsets, 1)

    --Amostrar rampa em 64 pedaços
    for i = 0, 64 do 

        local t = i/64

        --Iterar nos stops
        for idx = 2, #offsets do
            
            if offsets[idx] >= t then 

                --Cores para interpolar
                local c_next = colors[idx]
                local c_previous = colors[idx-1]

                --Pontos para interpolar
                local t_next = offsets[idx]
                local t_previous = offsets[idx-1]

                --Interpolar cada componente
                local r,g,b,a = 0

                if t_next == t_previous then

                    r = c_previous[1]; g = c_previous[2]; b = c_previous[3]; a = c_previous[4] 
                else
                    
                    r = ((t_next - t)*c_previous[1] + (t - t_previous)*c_next[1])/(t_next-t_previous)
                    g = ((t_next - t)*c_previous[2] + (t - t_previous)*c_next[2])/(t_next-t_previous)
                    b = ((t_next - t)*c_previous[3] + (t - t_previous)*c_next[3])/(t_next-t_previous)
                    a = ((t_next - t)*c_previous[4] + (t - t_previous)*c_next[4])/(t_next-t_previous)
                end

                --Colocar na rampa amostrada
                table.insert(aramp, {r,g,b,a})

                --Interromper loop
                break
            end

        end

    end

    return setmetatable({x1=x1, y1=y1, x2=x2, y2=y2, aramp=aramp, spread=spread_ramp, abc_transform=abc_transform}, self)
end

function ALineGradient:get_color(x, y)

    local px = self.abc_transform[1]*x + self.abc_transform[2]*y + self.abc_transform[3]

    local t = wrap_func[self.spread](px)

    if t==0 then print(t) end

    --Consertar valor para transparent
    if t == nil then return {0,0,0,0} end

    local t_idx = math.floor(t*64) + 1

    return self.aramp[t_idx]
end

--Gradiente Radial
local ARadialGradient = {cx=0, cy=0, r=0, fx=0, fy=0, aramp, ramp, spread, new_center, ninja_xf}

function ARadialGradient:new(cx, cy, r, fx, fy, ramp, paint_xf, opacity)

    self.__index = self

    --Calcular o novo centro
    local theta=0
    if cy==fy and cx==fx then 
        theta = 0
    else

        theta = math.atan2((cy-fy)/(cx-fx))
    end
    
    local s = math.sin(theta)
    local c = math.cos(theta)

    local lambda = r

    local T0= projectivity(1,0,-cx,0,1,-cy,0,0,1)
    local T1= projectivity(1/lambda,0,0,0,1/lambda,0,0,0,1)
    
    local T2 = projectivity(c,s,0,-s,c,0,0,0,1)

    local fx_new, fy_new = (T2*T1*T0):apply(fx, fy)
    local T3 = projectivity(1,0,-fx_new,0,1,0,0,0,1)

    local Tn = T3*T2*T1*T0

    local ninja_xf = Tn * paint_xf:inverse()

    local new_center = {Tn:apply(cx, cy)}

    --Calcular rampa de cores amostrada
    local aramp={}

    --Informações da rampa
    local spread_ramp = ramp:get_spread()
    local offsets = {}
    local colors = {}
    for i, stop in ipairs(ramp:get_color_stops()) do 

        table.insert(offsets, stop:get_offset())
        
        --Colocar opacidade
        r,g,b,a = table.unpack(stop:get_color())
        table.insert(colors, {r,g,b,opacity*a})
    end

    --Adicionar bordas
    table.insert(colors, 1, colors[1])
    table.insert(colors, colors[#colors])
    table.insert(offsets, 1, 0)
    table.insert(offsets, 1)

    --Amostrar rampa em 64 pedaços
    for i = 0, 64 do 

        local t = i/64

        --Iterar nos stops
        for idx = 2, #offsets do
            
            if offsets[idx] >= t then 

                --Cores para interpolar
                local c_next = colors[idx]
                local c_previous = colors[idx-1]

                --Pontos para interpolar
                local t_next = offsets[idx]
                local t_previous = offsets[idx-1]

                --Interpolar cada componente
                local r,g,b,a = 0

                if t_next == t_previous then

                    r = c_previous[1]; g = c_previous[2]; b = c_previous[3]; a = c_previous[4] 
                else
                    
                    r = ((t_next - t)*c_previous[1] + (t - t_previous)*c_next[1])/(t_next-t_previous)
                    g = ((t_next - t)*c_previous[2] + (t - t_previous)*c_next[2])/(t_next-t_previous)
                    b = ((t_next - t)*c_previous[3] + (t - t_previous)*c_next[3])/(t_next-t_previous)
                    a = ((t_next - t)*c_previous[4] + (t - t_previous)*c_next[4])/(t_next-t_previous)
                end

                --Colocar na rampa amostrada
                table.insert(aramp, {r,g,b,a})

                --Interromper loop
                break
            end

        end

    end

    return setmetatable({cx=cx, cy=cy, r=r, fx=fx, fy=fy, aramp=aramp, ramp=ramp, spread=spread_ramp, new_center=new_center, ninja_xf=ninja_xf}, self)
end

function ARadialGradient:get_color(x, y)

    local px, py = self.ninja_xf:apply(x,y)
    local cx, cy = table.unpack(self.new_center)

    local t_root1 = (cx*px + sqrt(px*px + py*py - cx*cx*py*py))/((px*px + py*py))
    local t_root2 = (cx*px - sqrt(px*px + py*py - cx*cx*py*py))/((px*px + py*py))

    local t_root = math.max(t_root1, t_root2)

    local t = wrap_func[self.spread](1/t_root)

    --Caso ponto esteja fora, fazer media dos stops
    if t_root1 < 0 and t_root2 < 0 then 
    
        local r_medio, g_medio, b_medio, a_medio = 0,0,0,0
        local len = 0
        for i, stop in ipairs(self.ramp:get_color_stops()) do 

            r,g,b,a = table.unpack(stop:get_color())
            r_medio = r_medio +r; g_medio = g_medio +g;
            b_medio = b_medio +b; a_medio = a_medio +a;
            len = i
        end

        return {r_medio/len,g_medio/len,b_medio/len,a_medio/len} 

    end

    --Consertar valor para transparent
    if t == nil then return {0,0,0,0} end

    local t_idx = math.floor(t*64) + 1

    return self.aramp[t_idx]
end


--Conseguir informação dos shapes
local dump_shape = {
    [shape_type.triangle] = function(shape, shape_xf)
        local tdata = shape:get_triangle_data()
        local content = {}

        print("\tp1", tdata:get_x1(), tdata:get_y1())
        print("\tp2", tdata:get_x2(), tdata:get_y2())
        print("\tp3", tdata:get_x3(), tdata:get_y3())

        local x1_t, y1_t = shape_xf:apply(tdata:get_x1(), tdata:get_y1())
        local x2_t, y2_t = shape_xf:apply(tdata:get_x2(), tdata:get_y2())
        local x3_t, y3_t = shape_xf:apply(tdata:get_x3(), tdata:get_y3())

        table.insert(content, AMLine:new(x1_t, y1_t, x2_t, y2_t))
        table.insert(content, AMLine:new(x2_t, y2_t, x3_t, y3_t))
        table.insert(content, AMLine:new(x3_t, y3_t, x1_t, y1_t))

        --Calcular bounding box do shape
        local x_min, y_min = 1e4, 1e4
        local x_max, y_max = -1e4, -1e4

        for idx, segments in pairs(content) do 

            local x0, y0, x1, y1 = table.unpack(segments.bbox.coords)

            x_min = math.min(x_min, x0, x1); y_min = math.min(y_min, y0, y1)
            x_max = math.max(x_max, x0, x1); y_max = math.max(y_max, y0, y1)  
        end

        local bbox = Bbox:new(x_min, y_min, x_max, y_max)

        return content, bbox
    end,

    [shape_type.circle] = function(shape, shape_xf)
        local cdata = shape:get_circle_data()
        local content = {}
        print("\tc", cdata:get_cx(), cdata:get_cy())
        print("\tr", cdata:get_r())
        table.insert(content, AcceleratedCircle:new(cdata:get_cx(), cdata:get_cy(), cdata:get_r(), shape_xf))

        local cx, cy, r = cdata:get_cx(), cdata:get_cy(), cdata:get_r()

        --Calcular bounding box do circulo no espaco do shape
        local cx, cy = shape_xf:apply(cx,cy)
        local x_min, y_min = cx-r, cy-r
        local x_max, y_max = cx+r, cy+r

        --Procurar melhor depois como fazer
        local bbox = Bbox:new(-1e10, -1e10, 1e10, 1e10)

        return content, bbox
    end,

    [shape_type.polygon] = function(shape, shape_xf)
        local pdata = shape:get_polygon_data()
        local coords = pdata:get_coordinates()
        local content = {}
        
        for i = 4, #coords, 2 do
            print("poligono, n printei dessa vez")
            local xi, yi = shape_xf:apply(coords[i-1], coords[i])
            local xi_m, yi_m = shape_xf:apply(coords[i-3], coords[i-2])
            table.insert( content, AMLine:new(xi_m, yi_m, xi, yi))
        end

        local x_f, y_f = shape_xf:apply(coords[#coords-1], coords[#coords])
        local x_0, y_0 = shape_xf:apply(coords[1], coords[2])
        table.insert( content, AMLine:new(x_f, y_f, x_0, y_0))

        --Calcular bounding box do shape
        local x_min, y_min = 1e4, 1e4
        local x_max, y_max = -1e4, -1e4

        for idx, segments in pairs(content) do 

            local x0, y0, x1, y1 = table.unpack(segments.bbox.coords)

            x_min = math.min(x_min, x0, x1); y_min = math.min(y_min, y0, y1)
            x_max = math.max(x_max, x0, x1); y_max = math.max(y_max, y0, y1)  
        end

        local bbox = Bbox:new(x_min, y_min, x_max, y_max)

        return content, bbox
    end,

    [shape_type.rect] = function(shape, shape_xf)
        local rdata = shape:get_rect_data()
        local content = {}
        print("", rdata:get_x(), rdata:get_y())
        print("", rdata:get_width(), rdata:get_height())

        local x, y = rdata:get_x(), rdata:get_y()
        local width, height = rdata:get_width(), rdata:get_height()

        local x0, y0 = shape_xf:apply(x, y)
        local x1, y1 = shape_xf:apply(x, y+height)
        local x2, y2 = shape_xf:apply(x+width, y+height)
        local x3, y3 = shape_xf:apply(x+width, y)

        table.insert(content, AMLine:new(x0, y0, x1, y1))
        table.insert(content, AMLine:new(x1, y1, x2, y2))
        table.insert(content, AMLine:new(x2, y2, x3, y3))
        table.insert(content, AMLine:new(x3, y3, x0, y0))

        --Calcular bounding box do shape
        local x_min, y_min = 1e4, 1e4
        local x_max, y_max = -1e4, -1e4

        for idx, segments in pairs(content) do 

            local x0, y0, x1, y1 = table.unpack(segments.bbox.coords)

            x_min = math.min(x_min, x0, x1); y_min = math.min(y_min, y0, y1)
            x_max = math.max(x_max, x0, x1); y_max = math.max(y_max, y0, y1)  
        end

        local bbox = Bbox:new(x_min, y_min, x_max, y_max)

        return content, bbox
    end,

    [shape_type.path] = function(shape, shape_xf)
        local pdata = shape:get_path_data()

        --Armazenar conteudo do path
        local content = {}
        --Armazenar end e begin segment
        local begin_s = {}
        local end_s = {}
        
        pdata:iterate(filter.make_input_path_f_xform(shape_xf,{
            begin_contour = function(self, x0, y0)
                print("", "begin_contour", x0, y0)
                begin_s = {x0, y0}
            end,
            end_open_contour = function(self, x0, y0)
                print("", "end_open_contour", x0, y0)
                end_s = {x0, y0}
            end,
            end_closed_contour = function(self, x0, y0)
                print("", "end_closed_contour", x0, y0)
                end_s = {x0, y0}
            end,
            linear_segment = function(self, x0, y0, x1, y1)
                print("", "linear_segment", x0, y0, x1, y1)
                table.insert(content, AMLine:new(x0, y0, x1, y1))
            end,
            quadratic_segment = function(self, x0, y0, x1, y1, x2, y2)
                print("", "quadratic_segment", x0, y0, x1, y1, x2, y2)
                table.insert(content, AQuad:new(x0, y0, x1, y1, 1, x2, y2))
            end,
            cubic_segment = function(self, x0, y0, x1, y1, x2, y2, x3, y3)
                print("", "cubic_segment", x0, y0, x1, y1, x2, y2, x3, y3)
                table.insert(content, ACub:new(x0, y0, x1, y1, x2, y2, x3, y3))
            end,
            rational_quadratic_segment = function(self, x0, y0, x1, y1, w1,
                x2, y2)
                print("", "rational_quadratic_segment", x0, y0, x1, y1, w1,x2, y2)
                table.insert(content, AQuad:new(x0, y0, x1, y1, w1, x2, y2))
            end,
        }))

        --Caso begin e end contour não forem iguais
        local x_begin, y_begin = table.unpack(begin_s)
        local x_end, y_end = table.unpack(end_s)

        if x_begin ~= x_end or y_begin ~= y_end then 

            table.insert(content, AMLine:new(x_end, y_end, x_begin, y_begin))
        end

        --Calcular bounding box do shape
        local x_min, y_min = 1e4, 1e4
        local x_max, y_max = -1e4, -1e4

        for idx, segments in pairs(content) do 

            local x0, y0, x1, y1 = table.unpack(segments.bbox.coords)

            x_min = math.min(x_min, x0, x1); y_min = math.min(y_min, y0, y1)
            x_max = math.max(x_max, x0, x1); y_max = math.max(y_max, y0, y1)  
        end

        local bbox = Bbox:new(x_min, y_min, x_max, y_max)

        return content, bbox
    end,
}

--Conseguir informação da tinta
local function print_color_ramp(ramp)
    print("", ramp:get_spread())
    for i, stop in ipairs(ramp:get_color_stops()) do
        print("", stop:get_offset(), "->", table.unpack(stop:get_color()))
    end
end

local dump_paint = {
    [paint_type.solid_color] = function(paint)
        local color = paint:get_solid_color()
        print("", table.unpack(color))
        local opacity = paint:get_opacity()
        print("", opacity)

        local acolor = ASolidColor:new(color)
        return acolor
    end,

    [paint_type.linear_gradient] = function(paint, paint_xf)
        local lg = paint:get_linear_gradient_data()
        print("", "p1", lg:get_x1(), lg:get_y1())
        print("", "p2", lg:get_x2(), lg:get_y2())
        print_color_ramp(lg:get_color_ramp())
        local opacity = paint:get_opacity()
        print("", opacity)

        local lineargrad = ALineGradient:new(lg:get_x1(), lg:get_y1(), lg:get_x2(), lg:get_y2(), lg:get_color_ramp(), paint_xf, opacity)

        return lineargrad
    end,

    [paint_type.radial_gradient] = function(paint, paint_xf)
        local lg = paint:get_radial_gradient_data()
        print("", "c", lg:get_cx(), lg:get_cy())
        print("", "f", lg:get_fx(), lg:get_fy())
        print("", "r", lg:get_r())
        print_color_ramp(lg:get_color_ramp())
        local opacity = paint:get_opacity()
        print("", opacity)

        local radialgrad = ARadialGradient:new(lg:get_cx(), lg:get_cy(), lg:get_r(), lg:get_fx(), lg:get_fy(), lg:get_color_ramp(), paint_xf, opacity)

        return radialgrad
    end
}

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

    local mult_alpha_rgb = {0,0,0}
    local alpha  = 0

    local intersections = 0

    --Iterar em cada shape
    for idx = #accelerated, 1, -1 do 

        local paths = accelerated[idx]

        --Verificar bounding box do shape
        local shape_bbox = paths.shape_bbox
        local shape_bbtest = shape_bbox:bbTest(x,y)
        local shape_isright = shape_bbox:isRight(x,y)

        if  shape_bbtest==1 and shape_isright==0  then 
        
            local w_rule = paths.w_rule
            local color = paths.color

            local r, g, b, a = table.unpack(color:get_color(x,y))

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

                --Atualizar valores do alpha global e pre multiplicado
                mult_alpha_rgb[1] = mult_alpha_rgb[1] + (1 - alpha)*r*a
                mult_alpha_rgb[2] = mult_alpha_rgb[2] + (1 - alpha)*g*a
                mult_alpha_rgb[3] = mult_alpha_rgb[3] + (1 - alpha)*b*a
                alpha = alpha  + (1 - alpha)*a

                --Parar de desenhar se alpha ficar muito grande
                if alpha >= 0.95 then break end

            end
        end
    end

    --Blend com o background
    mult_alpha_rgb[1] = mult_alpha_rgb[1] + (1 - alpha)*1
    mult_alpha_rgb[2] = mult_alpha_rgb[2] + (1 - alpha)*1
    mult_alpha_rgb[3] = mult_alpha_rgb[3] + (1 - alpha)*1
    alpha = 1

    return mult_alpha_rgb[1]/alpha, mult_alpha_rgb[2]/alpha, mult_alpha_rgb[3]/alpha, alpha
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

    local xf_stack = {}

    scene:get_scene_data():iterate{
        painted_shape = function(self, winding_rule, shape, paint)
            stderr("painted %s %s %s\n", winding_rule, shape:get_type(), paint:get_type())
            stderr("  xf s %s\n", shape:get_xf())

            --Compor as nested transformations
            local nested_xf = projectivity(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0)
            for i = #xf_stack, 1, -1 do 

                nested_xf = xf_stack[i]*nested_xf
            end

            local shape_xf = scene:get_xf()*shape:get_xf()*nested_xf

            local paint_xf =  scene:get_xf()*paint:get_xf()

            local shape_color = dump_paint[paint:get_type()](paint, paint_xf)

            local path_components = {content = {}, w_rule=winding_rule, color=shape_color, shape_bbox={}}

            path_components.content, path_components.shape_bbox = dump_shape[shape:get_type()](shape, shape_xf)
            
            table.insert(accel, path_components)

        end,

        begin_transform = function(self, depth, xf)
            print("begin transform", depth, xf)
            table.insert( xf_stack, xf)
        end,
        end_transform = function(self, depth, xf)
            print("end transform", depth, xf)
            table.remove( xf_stack)
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
