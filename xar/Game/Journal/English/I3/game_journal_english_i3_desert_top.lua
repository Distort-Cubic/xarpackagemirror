--File: game_journal_english_i3_desert_top.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Right now you are at an ^x00ff00(ordinary) cave^! "
        .. "of a desert.\n\n"
        .. "From a distance...\n\n"
        .. "an ordinary cave looks like a gray block,\n\n"
        .. "an ^x00ff00Oasis^! looks like a blue checkered block,\n\n"
        .. "both a ^x00ff00Cactus^! and a ^x00ff00Desert Flower^! "
        .. "look like a green block,\n\n"
        .. "and ^x00ff00Aladdin's Cave^! looks like a red block."
    game_journal.add_txt(lang, "DESERT_CAVE_ENTRANCE_ABOVE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_desert;@area_i3_desert_overview")
end

-------------------------------------------------------------------------------
