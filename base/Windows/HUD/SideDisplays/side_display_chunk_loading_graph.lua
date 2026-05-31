function p.__get_name()
    return "Chunk Loading Graph"
end

function p.__render(wid, min_x, min_y, max_x, max_y)
    local diff_y = max_y - min_y
    local char_h = diff_y * 0.75
    local char_w = char_h * 0.5
    
    local black  = std.vec(0.0, 0.0, 0.0)
    local red    = std.vec(1.0, 0.0, 0.0)
    local green  = std.vec(0.0, 1.0, 0.0)
    local blue   = std.vec(0.0, 0.0, 1.0)
    local yellow = std.vec(1.0, 1.0, 0.0)
    
    local num_levels = 10

    local levels_data = {}
    for i = 0,num_levels-1 do
        local level_data = {}
        local prefix = "stats.loading_bar_graph." .. tostring(i)
        level_data.red    = ga_get_sys_i(prefix .. ".red")
        level_data.yellow = ga_get_sys_i(prefix .. ".yellow")
        level_data.green  = ga_get_sys_i(prefix .. ".green")
        level_data.blue   = ga_get_sys_i(prefix .. ".blue")
        levels_data[i] = level_data
    end

    local max_height = 0;
    for i = 0,num_levels-1 do
        local col_height =
            levels_data[i].red +
            levels_data[i].yellow +
            levels_data[i].green +
            levels_data[i].blue
        if col_height > max_height then
            max_height = col_height
        end
    end
    if( max_height < 500) then
        max_height = 500
    end

    --Drawing the black rectangle.
    ga_win_quad_color(wid, min_x, min_y, max_x, max_y, black);

    --Drawing the cols.
    local add_x = (max_x - min_x) / num_levels
    local col_width = add_x * 0.75
    for i = 0,num_levels-1 do
        local col_min_x = min_x + (add_x * i)
        local col_max_x = col_min_x + col_width
        local diff_y = (max_y - min_y)
        local y0 = min_y
        local y1 = y0 + (levels_data[i].red / max_height)    * diff_y
        local y2 = y1 + (levels_data[i].yellow / max_height) * diff_y
        local y3 = y2 + (levels_data[i].green / max_height)  * diff_y
        local y4 = y3 + (levels_data[i].blue / max_height)   * diff_y
        ga_win_quad_color(wid, col_min_x, y0, col_max_x, y1, red)
        ga_win_quad_color(wid, col_min_x, y1, col_max_x, y2, yellow)
        ga_win_quad_color(wid, col_min_x, y2, col_max_x, y3, green)
        ga_win_quad_color(wid, col_min_x, y3, col_max_x, y4, blue)
    end
end
