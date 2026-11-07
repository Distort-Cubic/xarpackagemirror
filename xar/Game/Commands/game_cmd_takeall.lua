--This is called by the engine when the game is loaded.
function p.__load_game()
    local cmd_name = "take"
    game_command_system.add_command(cmd_name, p.handler)
    game_command_system.add_help(cmd_name, p.get_help_str())
end

function p.handler(str)
    if( str == "all" ) then
        game_cheats.take()
    elseif( str == "gold" ) then
        game_cheats.take_gold()
    else
        ga_console_print("^1Unknown arguments")
    end
end

function p.get_help_str()
    return
           "Usage: take all\n"
        .. "       take gold\n\n"
        .. "Cheat code to take away all ammo, health, and armor of the player. "
end
