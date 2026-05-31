--File: game_journal_english_i3_river.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are at the center of a ^x00ff00River^!.\n\n"
        .. "Sometimes there is a ^x00ff00Tangerine^! here. "
        .. "The Tangerine will be the same size "
        .. "as the pyramid you are on now. "
        .. "It is too tedious to find these Tangerines at the "
        .. "size you are now, or even one size larger. "
        .. "However if you are 2 sizes larger "
        .. "(so that this river is 2 chunks wide), "
        .. "then by flying a while you can find a Tangerine.\n\n"
        .. "You can enlarge to the right size using an "
        .. "^x00ff00Ascend Temple^!."
    game_journal.add_txt(lang, "RIVER_TREASURE_2_tangerine", str)
    game_journal.add_path("@area;@area_i3;@area_i3_main_forest;@area_i3_main_forest_river;{10}How to find tangerines")

    str = "^x00ff00Message from your friend K:\n\n"
        .. "Deeper deeper deeper. "
        .. "In this I3 part of the Infinity Flower "
        .. "you can find entrances to Hell "
        .. "(which hold Inner Cores).\n\n"
        .. "However as time goes on there are more and more "
        .. "gates to Hell, like an idea "
        .. "that cannot be kept secret. "
        .. "Here are other places where you can "
        .. "enter hell:\n\n"
        .. "1) ^xff0000The House of 5 Lampreys^x00ff00 "
        .. "in the Mylantis Top City.\n\n"
        .. "2) A secret place inside ^xff0000Club Green Apple^x00ff00, "
        .. "which is in Burlington Cities."
    game_journal.add_txt(lang, "RIVER_TREASURE_2_hell", str)
    game_journal.add_path("@area;@area_hell;@area_hell_loc;{10}The house of 5 lampreys")
    game_journal.add_path("@area;@area_hell;@area_hell_loc;{20}Club green apple")
end

-------------------------------------------------------------------------------
