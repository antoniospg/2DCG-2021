local facade = require"facade"
local image = require"image"
local chronos = require"chronos"

local unpack = table.unpack
local floor = math.floor

local _M = facade.driver()
setmetatable(_ENV, { __index = _M } )

local background = _M.solid_color(_M.color.white)

local function stderr(...)
    io.stderr:write(string.format(...))
end

-- Custom stuff
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------

--Retorna sinal do número (0 se num==0)
function sign(num)

    if num ~= 0 then
        return num/abs(num)
    else
        return 0.0
    end
end

--Colocar a cor em {r, g, b, a}
local dump_paint = {
    [paint_type.solid_color] = function(paint)
        local color = paint:get_solid_color()
        local r, g, b, a  = table.unpack(color)
        
        return {r, g, b, a}
    end
}

--Colocar toda a informação de um shape numa lista ordenada
local dump_shape = {
    [shape_type.triangle] = function(shape)
        local tdata = shape:get_triangle_data()
        local edges = {tdata:get_x1(), tdata:get_y1(),
                       tdata:get_x2(), tdata:get_y2(), 
                       tdata:get_x3(), tdata:get_y3()}

        return edges
    end,

    [shape_type.circle] = function(shape)
        local cdata = shape:get_circle_data()
        local info = { cdata:get_cx(), cdata:get_cy(), cdata:get_r()}

        return info
    end,

    [shape_type.polygon] = function(shape)
        local pdata = shape:get_polygon_data()
        local coords = pdata:get_coordinates()
        local edges = {}
        for i = 2, #coords, 2 do
            local xi, yi = coords[i-1], coords[i]
            table.insert(edges, xi)
            table.insert(edges, yi)
        end

        return edges
    end,
}

--Criar estrutura para as arestas 
AcceleratedEdges = {x1=0, y1=0, x2=0, y2=0, a=0, b=0, c=0}

--Construtor
function AcceleratedEdges:new(x1, y1, x2, y2)

    self.__index = self

    --Calcular (a, b, c) da reta
    local a = y2 - y1
    local b = x1 - x2
    local c = -(a*x1 + b*y1)

    return setmetatable({x1=x1, y1=y1, x2=x2, y2=y2, a=a, b=b, c=c}, self)
end

function AcceleratedEdges:minY()

    --Retorna o menor valor de y dos extremos
    if self.y1 > self.y2 then 
        return self.y2
    else
        return self.y1
    end
end

function AcceleratedEdges:maxY()

    --Retorna o maior valor de y dos extremos
    if self.y1 < self.y2 then 
        return self.y2
    else
        return self.y1
    end
end

function AcceleratedEdges:intersectionTest(x, y)

    --Teste de intercessão, a esquerda da reta tem sinal negativo, a direita positivo e na reta é 0
    local value = sign(self.a)*(self.a * x + self.b * y + self.c)

    return sign(value)
end

--Criar estrutura para os polígonos
AcceleratedPolygon = {accelEdges={}, color = {}, xf, w_rule}

--Construtor
function AcceleratedPolygon:new(edges, color, xf, w_rule)

    self.__index = self

    --Recebe uma lista do tipo {x1, y1, x2, y2, x3, y3} e transforma em uma lista de AcceleratedEdges
    local accelEdges = {}
    local num_lines = #edges / 2
    for i = 2, num_lines do 

        local x1 = edges[2*i - 3]
        local y1 = edges[2*i - 2]
        local x2 = edges[2*i - 1]
        local y2 = edges[2*i]

        --Aplicar transformação direta nos vértices
        local x1_prime, y1_prime = xf:apply(x1, y1)
        local x2_prime, y2_prime = xf:apply(x2, y2)
        
        table.insert(accelEdges, AcceleratedEdges:new(x1_prime, y1_prime, x2_prime, y2_prime))
    end

    --Último ponto com o primeiro
    local x1 = edges[2*num_lines - 1]
    local y1 = edges[2*num_lines]
    local x2 = edges[1]
    local y2 = edges[2]

    --Aplicar transformação direta nos vértices
    local x1_prime, y1_prime = xf:apply(x1, y1)
    local x2_prime, y2_prime = xf:apply(x2, y2)

    table.insert(accelEdges, AcceleratedEdges:new(x1_prime, y1_prime, x2_prime, y2_prime))

    return setmetatable({accelEdges=accelEdges, color=color, xf=xf, w_rule=w_rule}, self)
end

function AcceleratedPolygon:insideTest(x, y)

    --Verificar se o ponto (x, y) está dentro do polígono
    winding_num = 0

    for idx, accel_edge in pairs(self.accelEdges) do 

        --Verificar se está fora dos limites em y da aresta
        if y >= accel_edge:maxY() or y < accel_edge:minY() then
            
            winding_num = winding_num
        --Checar se há intercessão com a reta em questão
        elseif accel_edge:intersectionTest(x, y) == 1.0 then
            
            winding_num = winding_num + sign(accel_edge.a)
        else

            winding_num = winding_num
        end
    end

    --Verificar se vai desenhar ou não, baseado no método
    if self.w_rule == winding_rule.non_zero then 

        --Conferir se o número de intercessões é diferente de 0
        return winding_num ~= 0 and 1 or 0
    elseif self.w_rule == winding_rule.odd then 

        --Conferir a paridade das intercessões
        return winding_num % 2 
    else

        return 0.0
    end
end

--Criar estrutura para os círculos
AcceleratedCircle = {cx=0, cy=0, radius=0, color={}, xf, quad_matrix}

--Construtor
function AcceleratedCircle:new(cx, cy, radius, color, xf, quad_matrix)

    self.__index = self

    --Compor a transformação com uma translação e um scale, para centrar o círculo e transformar em raio 1
    local S = projectivity(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0/radius)
    local xf_transformed = xf*translation(cx, cy)*S

    --Calcular matriz da forma quadrática da cônica
    local A = xf_transformed:inverse()
    local P = projectivity(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, -1)
    local new_xf = A:transpose()*P*A

    return setmetatable({cx=cx, cy=cy, radius=radius, color=color, xf=xf_translated, quad_matrix=new_xf}, self)
end

function AcceleratedCircle:insideTest(x, y)

    --Substituir o ponto (x,y) na forma quadrática da cônica
    local xt, yt, wt = self.quad_matrix:apply(x, y, 1)
    local val = x*xt + y*yt + 1*wt

    --Sinal positivo de val_sign significa dentro da cônica
    local val_sign = -sign(val)

    return val_sign
end

-- End of custom stuff
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------
---------------------------------########################--------------------


local function sample(accelerated, x, y)
    -- This function should return the color of the sample
    -- at coordinates (x,y).
    -- Here, we simply return r = g = b = a = 1.
    -- It is up to you to compute the correct color!

    --Ir sobrescrevendo os valores de r,g,b a medida que vamos desenhando na cena
    local r_scene = 0
    local g_scene = 0
    local b_scene = 0

    local intersections = 0

    --Iterar no conjunto de shapes e ir sobrescrevendo as cores, bem como contar as intercessões
    for idx, accel_shape in pairs(accelerated) do
        
        local val = accel_shape:insideTest(x, y)
        local r, g, b, a = table.unpack(accel_shape.color)
        
        if val ==1 and {r,g,b}~=0 then
            
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

    --Armazenar conjunto de Accelerated Shapes
    local accel_shape = {}

    scene = scene:windowviewport(window, viewport)
    local scene_xf = scene:get_xf()
    stderr("scene xf %s\n", scene:get_xf())
    scene:get_scene_data():iterate{
        painted_shape = function(self, winding_rule, shape, paint)
            stderr("painted %s %s %s\n", winding_rule, shape:get_type(), paint:get_type())
            stderr("  xf s %s\n", shape:get_xf())

            --Coletar infos da cena e dos shapes
            local shape_info = dump_shape[shape:get_type()](shape)
            local shape_color = dump_paint[paint:get_type()](paint)
            local shape_xf = scene:get_xf():transformed(shape:get_xf())

            local accel_poly = {}

            --Verificar qual é o shape e criar as tabelas deles
            if shape:get_type() == shape_type.circle then 
        
                accel_poly = AcceleratedCircle:new(shape_info[1], shape_info[2], shape_info[3], shape_color, shape_xf)
            elseif shape:get_type() == shape_type.triangle or shape:get_type() == shape_type.polygon then 

                accel_poly = AcceleratedPolygon:new(shape_info,  shape_color, shape_xf, winding_rule)
            end

            table.insert(accel_shape, accel_poly)

        end,
    }
    -- It is up to you to do better!
    return accel_shape
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


