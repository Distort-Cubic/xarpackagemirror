--File: win_base_wp_error_you_can_only_travel_if_you_enable.lua

function p.__start(wid)
    --Go back button.
    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg);
end

function p.__end(wid)
    --Nothing to do.
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) )
    then
        ga_window_pop()
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    ga_win_set_char_size(wid, 0.02, 0.04)
    local red = std.vec(1.0, 0.0, 0.0)
    ga_win_set_front_color(wid, red)
    local msg = "YOU CAN ONLY TRAVEL IF YOU ENABLE THIS WAYPOINT"
    ga_win_txt_center(wid, 0.5, msg)
end
