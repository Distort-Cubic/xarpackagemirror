--File: game_journal_english_mylantis_blue_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Definition: An area is ^xff00ffPink Active^! "
        .. "if and only if it is possible to find Pink Rings inside "
        .. "that area that allow you to teleport outside of that area.\n\n"
        .. "Moreover, the Pink Destinations for these Pink Rings should be diverse, "
        .. "and not always be some fixed place.\n\n"
        .. "This library lists areas which are Pink Active.\n\n"
        .. "We say that area X is Pink Active via area Y when X and Y are "
        .. "both Pink Active, Y is inside X, "
        .. "and exiting Y with Pink Rings will cause you to "
        .. "exit from X."
    game_journal.add_txt(lang, "PINK_LIBRARY_WP", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{10}What pink active means")

    local str = "Pink Active areas in the ^x00ff00Ying World^!:\n\n"
        .. "^x0000ffYing Forests (via a deep secret). "
        .. "Therefore, much of the Ying World is technically pink active."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_yw", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{20}Ying world")

    local str = "Pink Active areas in ^x00ff00Midway^!:\n\n"
        .. "^xff00ffTau Caves^! (via Hard Pink Tree)\n"
        .. "^x0000ffStoney Air (via a deep secret)."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_mid", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{30}Midway")

    local str = "Pink Active areas in ^x00ff00I1^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_i1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{40}I1")

    local str = "Pink Active areas in ^x00ff00I2^!:\n\n"
        .. "^xff00ffScorpiusPortal (to I1)^!\n"
        .. "^xff00ffTaurusPortal (to I3)^!\n"
        .. "^xff00ffRainbow Flower^!\n"
        .. "^xff00ffToronto Maze^! (via Rainbow Flower)\n\n"
        .. "MANY more areas in I2 are Pink Active. We will not list them all."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_i2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{50}I2")

    local str = "Pink Active areas in ^x00ff00I3^!:\n\n"
        .. "^xff00ffSagittarius Portal\n"
        .. "^xff00ffThe Core of Mahogany Trees\n"
        .. "^xff00ffColchester (via secret area)\n"
        .. "^xff00ffEssex (via Sagittarius Portal)"
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_i3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{60}I3")

    local str = "Pink Active areas in ^x00ff00Burlington^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_bur", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{70}Burlington")

    local str = "Pink Active areas in ^x00ff00Space^!:\n\n"
        .. "^xff00ffSupermassive Black Hole."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_space", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{80}Space")

    local str = "Pink Active areas in ^x00ff00The Bulk^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_bulk", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{90}Bulk")

    local str = "Pink Active areas in ^x00ff00Mylantis^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_mylantis", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{100}Mylantis")

    local str = "Pink Active areas in ^x00ff00Hell^!:\n\n"
        .. "none."
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_hell", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{110}Hell")

    local str = "Pink Active areas in the ^x00ff00No Waypoint^! area:\n\n"
        .. "^xff00ffPink Tree^!\n"
        .. "^xff00ffHard Pink Tree^!"
    game_journal.add_txt(lang, "PINK_LIBRARY_LIST_1_nwp", str)
    game_journal.add_path("@area;@area_lib;@area_lib_pink;{120}No waypoint (NWP)")
end

-------------------------------------------------------------------------------
