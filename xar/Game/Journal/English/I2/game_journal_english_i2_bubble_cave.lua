--File: game_journal_english_i2_bubble_cave.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "50% of the time there will be a ^x0000ffBlue Mushroom^! "
        .. "below this text box."
    game_journal.add_txt(lang, "BUBBLE_CAVE_BUBBLE_ABOMINATION_TREASURE_blue_mushroom", str)
    game_journal.add_path("@area;@area_i2;@area_i2_bubble_cave;{10}Bubble center")
end

-------------------------------------------------------------------------------
