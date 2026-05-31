--File: game_journal_english_common_basic.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Do you ever wonder where ^xff00ffPink Rings^! "
        .. "will take you?  Open up the console (press ~) "
        .. "then type \"pathpink\" and press enter. "
        .. "This will show you all the ancestor chunks of your "
        .. "current chunk and which ones pink (and blue) rings "
        .. "will take you to. "
    game_journal.add_txt(lang, "PINK_SOURCE", str)
    game_journal.add_path("@prog;@prog_pathpink;{10}Version 1")
end
