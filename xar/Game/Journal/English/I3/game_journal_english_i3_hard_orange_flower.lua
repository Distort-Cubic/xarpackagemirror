--File: game_journal_english_i3_hard_orange_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Hard Orange Flower^!. \n\n"
        .. "If you enter the top of the orange cube, "
        .. "you will be inside a giant shaft. "
        .. "If you can make your way to the bottom, you will reach "
        .. "an ^x00ff00I2 WIG Flower^!. "
        .. "Right next to that flower there is a "
        .. "^x00ff00Scorpius Flower^!."
    game_journal.add_txt(lang, "HARD_ORANGE_FLOWER", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_hof;{10}Overview")
end

-------------------------------------------------------------------------------
