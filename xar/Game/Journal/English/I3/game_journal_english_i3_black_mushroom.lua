--File: game_journal_english_i3_black_mushroom.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Black Mushroom^!.\n\n"
        .. "Inside you can find ^x00ff00Black Markets^!."
    game_journal.add_txt(lang, "BLACK_MUSHROOM", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_bm;{10}Overview")
end

-------------------------------------------------------------------------------
