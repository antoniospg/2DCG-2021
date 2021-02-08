local facade = require"facade"

local _M = facade.driver()
setmetatable(_ENV, { __index = _M } )

function _M.accelerate(scene, window, viewport, args)
    return scene
end

local print_shape = {
    [shape_type.triangle] = function(shape)
        local tdata = shape:get_triangle_data()
        print("\tp1", tdata:get_x1(), tdata:get_y1())
        print("\tp2", tdata:get_x2(), tdata:get_y2())
        print("\tp3", tdata:get_x3(), tdata:get_y3())
    end,

    [shape_type.circle] = function(shape)
        local cdata = shape:get_circle_data()
        print("\tc", cdata:get_cx(), cdata:get_cy())
        print("\tr", cdata:get_r())
    end,

    [shape_type.polygon] = function(shape)
        local pdata = shape:get_polygon_data()
        local coords = pdata:get_coordinates()
        for i = 2, #coords, 2 do
            local xi, yi = coords[i-1], coords[i]
            print("", i//2, xi, yi)
        end
    end,

    [shape_type.rect] = function(shape)
        local rdata = shape:get_rect_data()
        print("", rdata:get_x(), rdata:get_y())
        print("", rdata:get_width(), rdata:get_height())
    end,

    [shape_type.path] = function(shape)
        local pdata = shape:get_path_data()
        pdata:iterate{
            begin_contour = function(self, x0, y0)
                print("", "begin_contour", x0, y0)
            end,
            end_open_contour = function(self, x0, y0)
                print("", "end_open_contour", x0, y0)
            end,
            end_closed_contour = function(self, x0, y0)
                print("", "end_closed_contour", x0, y0)
            end,
            linear_segment = function(self, x0, y0, x1, y1)
                print("", "linear_segment", x0, y0, x1, y1)
            end,
            quadratic_segment = function(self, x0, y0, x1, y1, x2, y2)
                print("", "quadratic_segment", x0, y0, x1, y1, x2, y2)
            end,
            cubic_segment = function(self, x0, y0, x1, y1, x2, y2, x3, y3)
                print("", "cubic_segment", x0, y0, x1, y1, x2, y2, x3, y3)
            end,
            rational_quadratic_segment = function(self, x0, y0, x1, y1, w1,
                x2, y2)
                print("", "rational_quadratic_segment", x0, y0, x1, y1, w1,
                    x2, y2)
            end,
        }
    end,
}

local function print_color_ramp(ramp)
    print("", ramp:get_spread())
    for i, stop in ipairs(ramp:get_color_stops()) do
        print("", stop:get_offset(), "->", table.unpack(stop:get_color()))
    end
end

local print_paint = {
    [paint_type.solid_color] = function(paint)
        local color = paint:get_solid_color()
        print("", table.unpack(color))
        local opacity = paint:get_opacity()
        print("", opacity)
    end,

    [paint_type.linear_gradient] = function(paint)
        local lg = paint:get_linear_gradient_data()
        print("", "p1", lg:get_x1(), lg:get_y1())
        print("", "p2", lg:get_x2(), lg:get_y2())
        print_color_ramp(lg:get_color_ramp())
        local opacity = paint:get_opacity()
        print("", opacity)
    end,

    [paint_type.radial_gradient] = function(paint)
        local lg = paint:get_radial_gradient_data()
        print("", "c", lg:get_cx(), lg:get_cy())
        print("", "f", lg:get_fx(), lg:get_fy())
        print("", "r", lg:get_r())
        print_color_ramp(lg:get_color_ramp())
        local opacity = paint:get_opacity()
        print("", opacity)
    end
}

function _M.render(scene, window, viewport, file, args)
    local i = 1
    print("window", table.unpack(window))
    print("viewport", table.unpack(viewport))
    print("scene")
    print(scene:get_xf())
    scene:get_scene_data():iterate({
        painted_shape = function(self, winding_rule, shape, paint)
            print("painted shape", i)
            print(winding_rule)
            print(shape, shape:get_xf())
            print_shape[shape:get_type()](shape)
            print(paint, paint:get_xf())
            print_paint[paint:get_type()](paint)
            i = i + 1
        end,
        begin_transform = function(self, depth, xf)
            print("begin transform", depth, xf)
        end,
        end_transform = function(self, depth, xf)
            print("end transform", depth, xf)
        end,
    })
end

return _M
