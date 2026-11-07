local m_tracking_marker_button = 1

local m_txt_turn_on_tracking_marker = "PRESS Y TO TURN ON YOUR TRACKING MARKER"
local m_txt_turn_off_tracking_marker = "PRESS N TO TURN OFF YOUR TRACKING MARKER"

local m_marker_msg1 = ""
local m_marker_msg2 = ""

function p.__start(wid)
    local y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, y, w, h, go_back_msg);
end

function p.__end(wid)
    --Nothing to do.
end

function p.__get_path_display_name()
    return "MARKERS"
end

function p.refresh_button(wid)
    m_marker_msg2 = ""
    local marker_exists = game_tracking_marker.exists()
    local marker_enabled = false;
    if( marker_exists ) then
        marker_enabled = game_tracking_marker.exists_and_enabled()
        if( marker_enabled ) then
            local dist = game_tracking_marker.get_dist()
            local dist_str = game_str.make_3_digit_big(dist)
            m_marker_msg1 = "YOUR TRACKING MARKER IS " .. dist_str .. " BLOCKS AWAY"
            m_marker_msg2 = "PRESS N TO TURN OFF YOUR TRACKING MARKER"
        else
            m_marker_msg1 = "YOU HAVE A TRACKING MARKER BUT IT IS TURNED OFF"
            m_marker_msg2 = "PRESS Y TO TURN ON YOUR TRACKING MARKER"
        end
        --Creating tracking marker button.
        local dummy_x = 0.0
        local w = 0.015
        local h = 0.03
        ga_win_widget_button_start(wid, m_tracking_marker_button, dummy_x, 0.4, w, h, m_marker_msg2)
        ga_win_widget_button_center_x_at(wid, m_tracking_marker_button, 0.5)
    else
        m_marker_msg1 = "YOU DO NOT HAVE A TRACKING MARKER"
        ga_win_widget_button_end(wid, m_tracking_marker_button)
    end
end

function p.__process_input(wid)
    --Setting the text on the tracking marker button.
    --Might as well do this here.
    p.refresh_button(wid)

    --Processing button clicking input.
    local which_button = ga_win_widget_button_process_input(wid)

    local marker_exists = game_tracking_marker.exists()
    local marker_enabled = game_tracking_marker.exists_and_enabled()

    if( marker_exists ) then
        if( ga_win_key_pressed(wid, "N") or
            (marker_enabled and which_button == m_tracking_marker_button) )
        then
            game_tracking_marker.hide()
            ga_window_pop_all()
            return
        end
        if( ga_win_key_pressed(wid, "Y") or
            (not marker_enabled and which_button == m_tracking_marker_button) )
        then
            game_tracking_marker.unhide()
            ga_window_pop_all()
            return
        end
    end

    if ga_win_widget_go_back_button_process_input(wid) then
        game_sound.play_sound_menu("menu_back")
        ga_window_pop()
        return
    end
end

function p.__render(wid)
    local col_black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, col_black, 0.95)

    local path = ga_get_window_stack_display_names()
    game_win_top_bar.render_path(wid, path)
    ga_win_set_front_color_default(wid)

    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.85, "TRACKING MARKER")

    ga_win_set_char_size(wid, 0.015, 0.03)

    -- local marker_exists = game_tracking_marker.exists()
    -- if( marker_exists ) then
    --     ga_win_txt_center(wid, 0.5, m_marker_msg1)
    -- else
    --     ga_win_txt_center(wid, 0.5, "YOU DO NOT HAVE A TRACKING MARKER")
    -- end
    ga_win_txt_center(wid, 0.5, m_marker_msg1)
    --The msg2 is rendered automatically as part of the text button.
end