--File: game_journal_english_mylantis_blue_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Definition: An area is ^x0000ffBlue Active^! "
        .. "if and only if it is possible to find Blue Rings inside "
        .. "that area that allow you to teleport outside of that area.\n\n"
        .. "Moreover, the Blue Destinations for these Blue Rings should be diverse, "
        .. "and not always be some fixed place.\n\n"
        .. "This library lists areas which are Blue Active.\n\n"
        .. "We say that area X is Blue Active via area Y when X and Y are "
        .. "both Blue Active, Y is inside X, "
        .. "and exiting Y with Blue Rings will cause you to "
        .. "exit from X."
    game_journal.add_txt(lang, "BLUE_LIBRARY_WP", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{10}What blue active means")

    local str = "Blue Active areas in the ^x00ff00Ying World^!:\n\n"
        .. "^x0000ffSmall Yellow Flower^! (via Jumbo Yellow Flower)\n"
        .. "^x0000ffJumbo Yellow Flower^! (via Ying Cave Island)\n"
        .. "^x0000ffYing Cave Island^! (via Spider Air)\n"
        .. "^x0000ffSpider Air^! (via Blue Bubble Gauntlet)"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_yw", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{20}Ying world")

    local str = "Blue Active areas in ^x00ff00Midway^!:\n\n"
        .. "^x0000ffBlue Bubble Gauntlet^! (via Blue Bubble)\n"
        .. "^x0000ffBlue Bubble^! (via Lighthouse)\n"
        .. "^x0000ffLighthouse^!"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_mid", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{30}Midway")

    local str = "Blue Active areas in ^x00ff00I1^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_i1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{40}I1")

    local str = "Blue Active areas in ^x00ff00I2^!:\n\n"
        .. "^x0000ffSmall Yellow Flower^! (via Jumbo Yellow Flower)\n"
        .. "^x0000ffLarge White Flower^! (via Rail Showdown Cave)"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_i2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{50}I2")

    local str = "Blue Active areas in ^x00ff00I3^!:\n\n"
        .. "^x0000ffLarge White Flower^! (via Rail Showdown Cave)"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_i3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{60}I3")

    local str = "Blue Active areas in ^x00ff00Burlington^!:\n\n"
        .. "^x0000ffRail Showdown Cave^! (via Small Yellow Flower)"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_bur", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{70}Burlington")

    local str = "Blue Active areas in ^x00ff00Space^!:\n\n"
        .. "^x0000ffGalaxy^! (via Blue Ring Station and Small Yellow Flower)\n"
        .. "^x0000ffBlue Ring Station^! (via Blue Bubble Gauntlet)\n\n"
        .. "Note: Not every Galaxy Flower is Blue Active."
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_space", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{80}Space")

    local str = "Blue Active areas in ^x00ff00The Bulk^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_bulk", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{90}Bulk")

    local str = "Blue Active areas in ^x00ff00Mylantis^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_mylantis", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{100}Mylantis")

    local str = "Blue Active areas in ^x00ff00Hell^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_hell", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{110}Hell")

    local str = "Blue Active areas in the ^x00ff00No Waypoint^! area:\n\n"
        .. "^x0000ffSmall White Flower^! (if inside Alpha Cube)"
    game_journal.add_txt(lang, "BLUE_LIBRARY_LIST_1_nwp", str)
    game_journal.add_path("@area;@area_lib;@area_lib_blue;{120}No waypoint (NWP)")
end

-------------------------------------------------------------------------------
