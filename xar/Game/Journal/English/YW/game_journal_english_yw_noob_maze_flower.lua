--File: game_journal_english_yw_noob_maze_flower.lua

local lang = "english"

function p.main()
    p.recordable()
    --more!!!
end

function p.recordable()
    local str = "If you have not already, you may want to go to\n\n"
        .. "MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> GAME -> CAMERA + MOVEMENT\n\n"
        .. "and try toggling \"use true up\". "
        .. "See which way you like better. "
    game_journal.add_txt(lang, "NOOB_MAZE_FLOWER_TREASURE_use_true_up", str)
    game_journal.add_path("@basic;@basic_controls;{40}Use true up")
end
