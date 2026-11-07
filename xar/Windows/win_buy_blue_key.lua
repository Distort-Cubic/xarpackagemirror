local main_button_handle = 1

--Helper function.
function p.price_helper(price)
    local num = 10
    if (price == 1) then num = 100 end
    if (price == 2) then num = 50 end
    return num
end

function p.__start(wid)
    local price = ga_get_i("temp.xar.ent.buy_blue_key.price")
    local txt = "PRESS ENTER TO BUY A BLUE KEY FOR " .. tostring(price) .. " GOLD"
    ga_win_widget_button_start(wid, main_button_handle, 0.0, 0.5, 0.02, 0.04, txt)
    ga_win_widget_button_center_x_at(wid, main_button_handle, 0.5)

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Return To Game (ESC or F)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)
end

function p.__render(wid)
    ga_win_set_background_default(wid)

    local gold = game_gold.get()
    local gold_str = game_str.add_commas(gold)
    ga_win_txt_center(wid, 0.9, "GOLD IN INVENTORY = " .. gold_str)
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) or
        ga_win_key_pressed(wid, "F") )
    then
        game_sound.play_sound_menu("menu_back")
        ga_window_pop()
    end

    local which_button = ga_win_widget_button_process_input(wid)

    if( which_button == main_button_handle or 
        game_key.pressed_or_spammed(wid, "ENTER") )
    then
        local price = ga_get_i("temp.xar.ent.buy_blue_key.price")
        local cost = price
        local gold = game_gold.get()
        if (gold >= cost) then
            game_gold.add( -cost )
            ga_set_f("xar.key_time.blue", 20.0)
            game_sound.play_sound_menu("pickup_powerup")
            ga_window_pop()
        end
    end
end
