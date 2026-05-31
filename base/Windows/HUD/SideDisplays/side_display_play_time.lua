function p.__get_name()
    return "Play Time"
end

function p.__render(wid, min_x, min_y, max_x, max_y)
    local var_char_w = ga_get_sys_f("display.hud.side_displays.char_size.large.w")
    local var_char_h = ga_get_sys_f("display.hud.side_displays.char_size.large.h")
    local diff_y = max_y - min_y
    local char_w = diff_y * var_char_w
    local char_h = diff_y * var_char_h
    
    local value = ga_get_sys_f("game.time.play")
    local str = "PT: " .. base_local_str.time_str(value)
    local green = std.vec(0.0, 1.0, 0.0)

    ga_win_set_front_color(wid, green)
    ga_win_set_char_size(wid, char_w, char_h)
    ga_win_txt(wid, min_x, min_y, str)
end
