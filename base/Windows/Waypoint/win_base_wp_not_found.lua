--File: win_base_wp_not_found.lua

function p.__start(wid)
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

function p.__render(wid)
    ga_win_set_char_size(wid, 0.015, 0.03)
    msg = "^xff0000"
        .. "The target waypoint was not found. "
        .. "This could be because you made a change to the world "
        .. "which obliterated the waypoint. "
        .. "Or, it could be that some update "
        .. "was made to the game that changed the layout of "
        .. "the world. If you encounter lots of problems like "
        .. "this, you should consider \"Rebooting\" the game. "
        .. "This means that you start back at the beginning, "
        .. "but some of your inventory/upgrades are kept "
        .. "(assuming the package supports this). "
        .. "You can reboot this saved game by going to "
        .. "OPTIONS -> GAME LOADING/SAVING -> REBOOT GAME"
    ga_win_txt_box(wid, msg, false)
end

function p.__process_input(wid)
    if ga_win_widget_go_back_button_process_input(wid) then
        ga_window_pop()
    end
end
