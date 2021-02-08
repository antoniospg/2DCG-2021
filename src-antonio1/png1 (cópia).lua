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

function sign(num)

    --Retorna sinal do número (0 se num==0)
    if num ~= 0 then
        return num/abs(num)
    else
        return 0.0
    end
end

--Colocar a cor em um vetor (r, g, b)
local print_paint = {
    [paint_type.solid_color] = function(paint)
        local color = paint:get_solid_color()
        print("", table.unpack(color))
        local opacity = paint:get_opacity()
        print("", opacity)
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
            table.insert(edges, xi, yi)
        end

        return edges
    end,
}

--Criar estrutura para as arestas 
AcceleratedEdges = {x1=0, y1=0, x2=0, y2=0, a=0, b=0, c=0}

function AcceleratedEdges:new(x1, y1, x2, y2)

    self.__index = self

    self.x1 = x1
    self.y1 = y1
    self.x2 = x2 
    self.y2 = y2 

    --Calcular (a, b, c) da reta
    self.a = y2 - y1
    self.b = x1 - x2
    self.c = -(self.a*x1 + self.b*y1)

    return setmetatable({x1=x1, y1=y1, x2=x2, y2=y2, a=x2, b=x1, c=y1}, self)
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
AcceleratedPolygon = {accelEdges={}}

function AcceleratedPolygon:new(o, edges)

    local o = o or {}
    setmetatable(o, self)
    self.__index = self

    --Recebe uma lista do tipo {x1, y1, x2, y2, x3, y3} e transforma em uma lista de AcceleratedEdges
    local num_lines = #edges / 2
    for i = 2, num_lines do 

        table.insert(self.accelEdges, AcceleratedEdges:new(edges[2*i - 3], edges[2*i - 2], edges[2*i - 1], edges[2*i]))
    end

    --Último ponto com o primeiro
    table.insert(self.accelEdges, AcceleratedEdges:new(edges[num_lines*2 - 1], edges[num_lines*2], edges[1], edges[2]))
    
    local a = AcceleratedEdges:new(1, 2,3 ,4)
    local c = AcceleratedEdges:new(111, 600, 7, 8)

    print(a.a, c.a)

    return o
end

function AcceleratedPolygon:insideTest(x, y)

    --Verificar se o ponto (x, y) está dentro do polígono
    intersections = 0
    for idx, accel_edge in pairs(self.accelEdges) do 

        --Verificar se está fora dos limites em y da aresta
        if y >= accel_edge:maxY() and y <= accel_edge:minY() then
            
            intersections = intersections
        --Checar se há intercessão com a reta em questão
        elseif accel_edge:intersectionTest(x, y) == 1.0 then
            
            intersections = intersections + 1
        else
            
            intersections = intersections
        end
    end
    
    --Conferir a paridade das intercessões
    return intersections % 2 
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

    local val = accelerated:insideTest(100, 80)

    return val, 1, 1, 1
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
    scene:get_scene_data():iterate{
        painted_shape = function(self, winding_rule, shape, paint)
            stderr("painted %s %s %s\n", winding_rule, shape:get_type(), paint:get_type())
            stderr("  xf s %s\n", shape:get_xf())

            local shape_info = dump_shape[shape:get_type()](shape)
            print (shape_info[6])
            accel_poly = AcceleratedPolygon:new(nil, shape_info)


        end,
    }
    -- It is up to you to do better!
    return accel_poly
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


