--File: game_journal_english_yw_happy_land.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "If you enable cheat codes using a password, you can do the following:\n\n"
        .. "To cheat to navigate through the world, "
        .. "you can press Z to get larger and press X to get smaller. "
        .. "For this to work, the cheatcode \"shrinkany\" must be enabled. "
        .. "You can type \"^xffff00shrinkany^!\" into the console to enable/disable this. "
        .. "^xff00ffDisabling shrinkany is how the game is meant to be played.^!\n\n"
        .. "Note: you open the console by pressing the ^xffff00~^! key.\n\n"
        .. "Type ^xffff00god^! in the console to turn on and off invulnerability mode."
    game_journal.add_txt(lang, "HAPPY_LAND_CONSOLE_cheats", str)
    game_journal.add_path("@prog;@prog_cheat;{20}god, shrinkany")

    game_journal.add_txt_cb(
        lang, "HAPPY_LAND_CONSOLE_commands_in_program_startup",
        p.HAPPY_LAND_CONSOLE_commands_in_program_startup)
    game_journal.add_path("@prog;@prog_cheat;{30}give upgrades1, give all, give gold")

    local str = "You can learn to create your own world using this engine "
        .. "by reading the \"Creation Manual\" found online at\n\n"
        .. "http://danthemanhathaway.com/\n"
        .. "ComputerGames/\n"
        .. "FractalBlockWorld/\n"
        .. "ReleaseMisc/\n"
        .. "index.html.\n\n"
        .. "^xff0000Disclaimer: The ability to create "
        .. "your own world is in beta. "
        .. "We only offer limited support for debugging "
        .. "the creation of your own world. "
        .. "However if you find a bug in our API or engine, "
        .. "then e-mail us directly (not Steam). ";
    game_journal.add_txt(lang, "HAPPY_LAND_CONSOLE_creation_manual", str)
    game_journal.add_path("@prog;@prog_own_world")
end

function p.HAPPY_LAND_CONSOLE_commands_in_program_startup(chunk_id)
    --Ignoring chunk_id.
    local str = "You can have commands be run at the startup of the program by modifying "
        .. "\"^x00ff00Input/Scripts/program_startup.txt^!\". Modify this file to set what cheatcodes "
        .. "are enabled when the program starts up. "
        .. "If this file does not already exist, then make a copy of "
        .. "Input/Scripts/program_startup_backup.txt and rename it to "
        .. "\"program_startup.txt\"."
    if not game_genesis.enabled() then
        str = str .. "\n\nOnce you do this and enable cheatcodes, "
            .. "type ^xffff00give upgrades1^! in the console to level up to a very high level. "
            .. "Type ^xffff00give all^! to refill your ammo, "
            .. "and ^xffff00give gold^! to refill your gold."
    end
    return str
end

-------------------------------------------------------------------------------
