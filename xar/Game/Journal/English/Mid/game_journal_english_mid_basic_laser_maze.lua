--File: game_journal_english_mid_catacombs.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffIn Tweedle-Dee Air you can find Tweedle-Dee Caves.\n\n"
        .. "Within one of these caves, instead of going all the way to "
        .. "to bottom, you can stop once you find an Ice Cube "
        .. "(or the variant Hard Ice Cube).\n\n"
        .. "In the center of an Ice Cube which holds the treasure, the surrounding air "
        .. "contains Blue Bubbles. "
    game_journal.add_txt(lang, "EASY_LASER_MAZE_TREASURE", str)
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_large;{10}Basic laser mazes contain a hint;{30}The hint itself")
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{10}Skipping an orange going directly to blue bubble")
end

-------------------------------------------------------------------------------
