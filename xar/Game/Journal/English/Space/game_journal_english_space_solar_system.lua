--File: game_journal_english_space_solar_system.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You can enlarge here in the middle of this 3x3x3 cube.\n\n"
        .. "^xff0000Warning: once you enlarge here, the only way to "
        .. "get back to this location and at your current size is to go to "
        .. "the boundary of this galaxy cube and then shrink on a vertical edge.^!"
    game_journal.add_txt(lang, "SPACE_SOLAR_SYSTEM_ELEVATOR_INFO_part1", str)
    game_journal.add_path("@area;@area_space;@area_space_soloar;{10}Growing;{10}Part 1")

    local str = "^xff00ffAssume that the galaxy cube "
        .. "you are in now is in \"Standard Outer Space\".^!\n\n"
        .. "Then by enlarging here, you can perform intergalactic travel.\n\n"
        .. "Outside of this galaxy cube, you can enlarge more. "
        .. "Once you are in the region of "
        .. "(standard outer) space in between galaxies, you can grow "
        .. "until you enter ^x00ff00Outer Space Level 2^!."
    game_journal.add_txt(lang, "SPACE_SOLAR_SYSTEM_ELEVATOR_INFO_part2", str)
    game_journal.add_path("@area;@area_space;@area_space_soloar;{10}Growing;{20}Part 2")

    local str = "Then, to enlarge one more time you can go to a red "
        .. "K-chunk cube with a \"1\" on it.\n\n"
        .. "Then, to enlarge yet one more time you can go to a similar cube "
        .. "but with a \"0\" on it.\n\n"
        .. "Once you are in ^x00ff00Outer Space Level 0^!, it is a quick fly "
        .. "over to the orange cube with an \"M\" on it. "
        .. "That is ^x00ff00Mylantis^!: the largest structure in the Xar universe. "
        .. "Home of the great Mylantis Top City and the Mylantis Council. "
        .. "And, the location of the large scale RejuvenX mining operation."
    game_journal.add_txt(lang, "SPACE_SOLAR_SYSTEM_ELEVATOR_INFO_part3", str)
    game_journal.add_path("@area;@area_space;@area_space_soloar;{10}Growing;{30}Part 3")
end

-------------------------------------------------------------------------------
