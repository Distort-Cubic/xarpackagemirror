--File: win_base_wp_enable_disable.lua

function p.__start(wid)
    local y = 0.45
    local w = 0.01
    local h = 0.02
    ga_win_widget_text_input_start(wid, y, w, h)

    local custom_name = win_base_wp.get_cur_custom_name()
    ga_win_widget_text_input_set_text(wid, custom_name)

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)
end

function p.__end(wid)
    --Nothing to do.
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) ) then
        ga_window_pop()
        return
    end

    local entered_text = ga_win_widget_text_input_process_input(wid)

    if( ga_win_key_pressed(wid, "ENTER") or
        entered_text ~= "" )
    then
        win_base_wp.toggle_enable_disable()
        local path = win_base_wp.get_cur_path()
        local custom_name = entered_text
        game_base_wp_system.set_custom_name(path, custom_name)
        ga_window_pop()
        return
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    win_base_wp.render_wp_name(wid)

    local text = win_base_wp.get_enable_disable_button_text()
    ga_win_txt_center(wid, 0.8, text)

    ga_win_set_char_size(wid, 0.01, 0.02)
    local text = "TYPE ANY CUSTOM NAME THEN PRESS ENTER:"
    ga_win_txt_center(wid, 0.5, text)

    local yellow = std.vec(1.0, 1.0, 0.0)
    ga_win_set_front_color(wid, yellow)
    local text = "YOU MUST PRESS ENTER TO ENABLE THIS WAYPOINT"
    ga_win_txt_center(wid, 0.4, text)
    ga_win_set_front_color_default(wid)
end
