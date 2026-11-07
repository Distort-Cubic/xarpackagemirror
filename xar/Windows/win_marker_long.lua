local m_remove_marker_button = 1
local m_tracking_marker_button = 2

local m_txt_press_f5_to_remove = "PRESS F5 TO REMOVE (OR RIGHT CLICK ON MARKER)"
local m_txt_press_f7_to_track = "PRESS F7 TO SET THIS AS YOUR TRACKING MARKER"
local m_txt_this_is_your_track = "THIS IS YOUR TRACKING MARKER"

function p.__start(wid)
    local min_x = 0.1
    local max_x = 0.9
    local min_y = 0.3
    local max_y = 0.7
    local char_w = 0.02
    local char_h = 0.04
    local col = std.vec(0.0, 0.5, 0.5)

    local dummy_x = 0.0
    local w = 0.015
    local h = 0.03
    ga_win_widget_button_start(wid, m_remove_marker_button, dummy_x, 0.93, w, h,
        m_txt_press_f5_to_remove)
    ga_win_widget_button_center_x_at(wid, m_remove_marker_button, 0.5)

    local dummy_x = 0.0
    local w = 0.015
    local h = 0.03
    ga_win_widget_button_start(wid, m_tracking_marker_button, dummy_x, 0.87, w, h,
        m_txt_press_f7_to_track) --Will set the text again later.
    ga_win_widget_button_center_x_at(wid, m_tracking_marker_button, 0.5)

    local inst_id = ga_get_i("temp.xar.marker_long_inst_id")
    local init_str = ga_ment_get_s(inst_id, "msg")

    ga_win_widget_mutable_text_box_start(
        wid, min_x, max_x, min_y, max_y, char_w, char_h,
        col,
        init_str)

    local y = 0.02
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, y, w, h, go_back_msg);
end

function p.__end(wid)
    local txt = ga_win_widget_mutable_text_box_get_text(wid)

    local game_time = ga_get_sys_f("game.time.total")
    local revert_time = game_time + (1000000 * 60.0)

    local inst_id = ga_get_i("temp.xar.marker_long_inst_id")
    ga_ment_set_s(inst_id, "msg", txt)
    
    ga_win_widget_mutable_text_box_end(wid)
end

function p.__process_input(wid)
    if( ga_win_key_pressed(wid, "ESC") or
        ga_win_widget_go_back_button_process_input(wid) )
    then
        ga_window_pop()
    end

    --Setting the text on the tracking marker button.
    --Might as well do this here.
    local button_txt = "NOT_SET"
    local cur_marker = ga_get_i("temp.xar.marker_long_code_id")
    local tracking_marker = ga_get_i("xar.player.tracking_marker")
    if( cur_marker == tracking_marker ) then
        button_txt = m_txt_this_is_your_track
    else
        button_txt = m_txt_press_f7_to_track
    end
    ga_win_widget_button_set_text(wid, m_tracking_marker_button, button_txt)
    ga_win_widget_button_center_x_at(wid, m_tracking_marker_button, 0.5)

    --Processing button clicking input.
    local which_button = ga_win_widget_button_process_input(wid)

    if( which_button == m_remove_marker_button or
        ga_win_key_pressed(wid, "F5") )
    then
        local cur_marker_code_id = ga_get_i("temp.xar.marker_long_code_id")
        local tracker_marker_code_id = ga_get_i("xar.player.tracking_marker")
        if( cur_marker_code_id == tracker_marker_code_id ) then
            game_tracking_marker.hide()
        end
        --
        local inst_id = ga_get_i("temp.xar.marker_long_inst_id")
        local code_id = ga_get_i("temp.xar.marker_long_code_id")
        ga_ment_remove(inst_id)
        game_tracking_marker.remove_maybe(code_id)
        ga_window_pop()
    end

    if( which_button == m_tracking_marker_button or
        ga_win_key_pressed(wid, "F7") )
    then
        game_tracking_marker.unhide()
        local cur_marker = ga_get_i("temp.xar.marker_long_code_id")
        ga_set_i("xar.player.tracking_marker", cur_marker)
    end
end

function p.__render(wid)
    local col_black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, col_black, 0.95)

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.80, "THE MESSAGE FOR THIS LONG MARKER:")

    --The mutable_text_box widget is rendered automatically
    --(because it was created).
end
