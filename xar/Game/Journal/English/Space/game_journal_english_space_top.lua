--File: game_journal_english_space_top.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Mylantis^! is the largest structure in the Xar universe.\n\n"
        .. "Mylantis is a giant orange block with an \"M\" on it, "
        .. "and is located in Outer Space Level 0.\n\n"
        .. "Right now, you are in ^x00ff00Outer Space Level 1^!.\n\n"
        .. "If you want to reach Mylantis, you must first "
        .. "grow one level into Outer Space Level 0. "
        .. "To do this, fly into the center of a red block "
        .. "with a \"0\" on it and grow. \n\n"
        .. "Then you must fly over to Mylantis."
    game_journal.add_txt(lang, "SPACE_TOP_2_BUNKER", str)
    game_journal.add_path("@area;@area_space;@area_space_lev_1;{10}Reaching mylantis")

    local str = "This is a ^x00ff00Lockbox^!. "
        .. "There are two types of these Lockboxes in this Outer Space area. "
        .. "The other type contains the combination to the "
        .. "^xff00ffBurlington City Combination Lock^!. "
    game_journal.add_txt(lang, "SPACE_TOP_YELLOW_LOCKBOX", str)
    game_journal.add_path("@area;@area_space;@area_space_lev_1;{20}Types of lockboxes")
end

-------------------------------------------------------------------------------
