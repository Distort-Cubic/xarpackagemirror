--File: win_base_tele_blue.lua

--This window is designed to be rendered
--and do input processing while the the
--game_base_tele_blue.lua script is teleporting
--the player.  What happens is that that script
--calls the function
--ga_explore_while(callback_name, win_name)
--using "win_base_tele_blue" (the name of this module)
--as the window name.
--So, the engine will use this window until
--the callback_name function returns false.

function p.__render(wid)
    local col_black = std.vec(0.0, 0.0, 0.0)
    local col_red = std.vec(1.0, 0.0, 0.0)
    local back_alpha = 1.0
    ga_win_set_background(wid, col_black, back_alpha)

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_set_front_color(wid, col_red)
    ga_win_txt_center(wid, 0.7, "DO NOT SAVE OR EXIT THE PROGRAM")

    ga_win_set_front_color_default(wid)
    ga_win_set_char_size(wid, 0.03, 0.06)
    ga_win_txt_center(wid, 0.5, "BLUE RING TELEPORTATION")

    local viewer_level = ga_get_viewer_level()
    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.4, "LEVEL = " .. tostring(viewer_level))
end

--We could be clever and have it so if we press the
--escape key, they we no longer call ga_render_skip_next_frame()
--every frame in "game_base_tele_blue.lua".
--We cannot execute normal game binds while we are in the
--"explore while" loop.
--Thus we must be explicit that the ESC key opens the main menu
--and the GRAVE key opens the console.
function p.__process_input(wid)
    --Because this __process_input is being called,
    --the main menu and console are both closed.
    --Thus we can safely have the game_base_tele_blue script
    --skip most render frames while the teleportation is going on.
    ga_dyn_set_b("dyn.base.blue_tele_always_render", false)

    local opening_main_menu = false
    if ga_win_key_pressed(wid, "ESC") then
        opening_main_menu = true
        ga_open_title_menu()
    end

    local opening_console = false
    if ga_win_key_pressed(wid, "GRAVE") then 
        opening_console = true
        ga_open_console()
    end

    if( opening_main_menu or
        opening_console )
    then
        --This way the script game_base_tele_blue will not
        --keep calling ga_render_skip_next_frame() to 
        ga_dyn_set_b("dyn.base.blue_tele_always_render", true)
    end
end
