--List of x,y pairs,
--which are screen coordinates
--of vertices of the poly line to draw.
local data1 = {}

function p.__get_name()
    return "FPS Graph"
end

function p.__render(wid, min_x, min_y, max_x, max_y)
    local diff_y = max_y - min_y
    local char_h = diff_y * 0.75
    local char_w = char_h * 0.5
    local green = std.vec(0.0, 1.0, 0.0)

    local new_elapsed = ga_get_sys_f("game.time.elapsed")

    --The number of second to record.
    --May want to make this customizable.
    local time_window = 5.0

    --May want to make this customizable.
    local max_elapsed = 0.05

    --Converting elapsed_time to an x delta.
    local scale_x = (max_x - min_x) / time_window

    local add_x = -(new_elapsed * scale_x)

    --Shuffling.
    local len = #data1
    for i = len, 1, -1 do
        data1[i+1] = data1[i]
    end
    --Moving left.
    for i = 1, #data1 do
        data1[i].x = data1[i].x + add_x
    end
    --Removing elements.
    while true do
        len = #data1
        if len == 0 then break end
        if( data1[len].x < min_x ) then
            table.remove(data1,len)
        else
            break
        end
    end
    --Adding new value.
    local new_table = {}
    new_table.x = max_x
    new_table.y =
        min_y +
        (new_elapsed / max_elapsed) * (max_y - min_y)
    data1[1] = new_table

    --Drawing the black rectangle.
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_quad_color(wid, min_x, min_y, max_x, max_y, black);

    --Drawing the greens lines.
    local len = #data1 - 1
    for i = 1,len do
        local x1 = data1[i].x
        local y1 = data1[i].y
        local x2 = data1[i+1].x
        local y2 = data1[i+1].y
        ga_win_line(wid, x1, y1, x2, y2, green)
    end
end
