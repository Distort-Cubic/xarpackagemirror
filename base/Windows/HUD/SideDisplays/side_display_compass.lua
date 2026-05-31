function p.__get_name()
    return "Compass"
end

function p.__render(wid, min_x, min_y, max_x, max_y)
    local var_char_w = ga_get_sys_f("display.hud.side_displays.char_size.large.w")
    local var_char_h = ga_get_sys_f("display.hud.side_displays.char_size.large.h")
    local diff_y = max_y - min_y
    local char_w = diff_y * var_char_w
    local char_h = diff_y * var_char_h

    -- local diff_y = max_y - min_y
    -- local char_h = diff_y * 0.75
    -- local char_w = char_h * 0.5

    local green = std.vec(0.0, 1.0, 0.0)
    --
    local camera_look = ga_get_sys_v("game.player.camera.look")
    local dir_str = ""
    local cutoff = 3.1415926 / 8.0 --Might want to be able to configure this.
    if( std.angle_between_vec(camera_look, std.vec(1.0, 0.0, 0.0)) < cutoff ) then
        dir_str = "RIGHT"
    end
    if( std.angle_between_vec(camera_look, std.vec(-1.0, 0.0, 0.0)) < cutoff ) then
        dir_str = "LEFT"
    end
    if( std.angle_between_vec(camera_look, std.vec(0.0, 1.0, 0.0)) < cutoff ) then
        dir_str = "FRONT"
    end
    if( std.angle_between_vec(camera_look, std.vec(0.0, -1.0, 0.0)) < cutoff ) then
        dir_str = "BACK"
    end
    if( std.angle_between_vec(camera_look, std.vec(0.0, 0.0, 1.0)) < cutoff ) then
        dir_str = "UP"
    end
    if( std.angle_between_vec(camera_look, std.vec(0.0, 0.0, -1.0)) < cutoff ) then
        dir_str = "DOWN"
    end
    --
    ga_win_set_front_color(wid, green)
    ga_win_set_char_size(wid, char_w, char_h)
    ga_win_txt(wid, min_x, min_y, dir_str)
end
