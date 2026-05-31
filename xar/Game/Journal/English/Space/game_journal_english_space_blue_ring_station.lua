--File: game_journal_english_space_blue_ring_station.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "BLUE_RING_STATION_ENTRANCE",
        p.BLUE_RING_STATION_ENTRANCE)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{10}Overview")

    local str = "Message from OJ 287: \n\n"
        .. "^x0000ffThe planet Mylantis is the largest structure in the Xar universe. "
        .. "From a distance, it looks like an orange block with an \"M\" on it. \n\n"
        .. "The normal way to go there (starting in a typical part of space) "
        .. "is to enlarge until you are in Outer Space Level 2. "
        .. "Then fly over to a red enlarging cube with a \"1\" on it. "
        .. "That will enlarge you into Outer Space Level 1.\n\n"
        .. "Then find a similar cube but with a \"0\" "
        .. "on it to enlarge yourself into Outer Space Level 0. "
        .. "Then, Mylantis is just a quick fly away.^!";
    game_journal.add_txt(lang, "BLUE_RING_STATION_INFO_part1", str)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{20}Going to mylantis;{10}Part 1")

    local str = "^x0000ffHowever, Outer Space Levels 1 and 2 are too hostile for some folks. "
        .. "So, I made this teleportation station to teleport directly to Mylantis! "
        .. "The planet should be open to all.\n\n"
        .. "Unfortunately, all who enter Mylantis this way must go through customs...^! ";
    game_journal.add_txt(lang, "BLUE_RING_STATION_INFO_part2", str)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{20}Going to mylantis;{20}Part 2")

    local str = "^xff0000As long as this Mylantis Customs structure is in a Galaxy that it is "
        .. "in standard outer space, the blue ring device at the end will bring you to "
        .. "Mylantis.\n\n"
        .. "However, if this Galaxy is NOT in standard outer space, there is no "
        .. "guarantee where the blue rings will take you.";
    game_journal.add_txt(lang, "BLUE_RING_STATION_INFO_part3", str)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{20}Going to mylantis;{30}Part 3")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffSick of going through this long shaft? "
        .. "Hahahaha! Ha!\n\n"
        .. "Unfortunately I cannot take credit for this "
        .. "ingenious monstrosity. :(\n\n"
        .. "I made an alternate route: if you go outside this structure "
        .. "and consider the three blue rings surrounding the "
        .. "central column, the bottom ring has a "
        .. "^x00ff00Blue Bubble Gauntlet^x0000ff on it. "
        .. "If you use enough EMP blasts you can get to a Blue Bubble "
        .. "at the center.\n\n"
        .. "From there, a skilled Inner Botanist knows how to find "
        .. "Blue Rings from within a Blue Bubble. "
        .. "I wish I could ^xffffffshine a light^x0000ff on how to do that.\n\n"
        .. "Hahahahah! HAAAAAA!!!"
    game_journal.add_txt(lang, "BLUE_RING_STATION_SHAFT_WALL_TREASURE", str)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{30}There is a faster way!")

    game_journal.add_txt_cb(lang, "BLUE_RING_STATION_EXIT_2",
        p.BLUE_RING_STATION_EXIT_2)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_bluering;{40}About to enter mylantis")
end

function p.BLUE_RING_STATION_ENTRANCE(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Welcome to the border!^!\n\n"
        .. "You must go through customs.\n\n"
        .. "^xff0000It takes a \"little while\"... "
        .. "It is much faster to go to Mylantis directly by flying there.^!\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "The walls of the shaft are safe.\n\n"
    end
    str = str .. "There is a blue ring device at the bottom of the shaft."
    return str
end

function p.BLUE_RING_STATION_EXIT_2(chunk_id)
    --Ignoring chunk_id.
    local str = "Assuming this Blue Ring Station is in the usual outer space "
        .. "location, you are about to enter the planet of ^x00ff00Mylantis^!! \n\n"
        .. "Mylantis is the largest structure in the Xar universe. "
        .. "It has a beautiful city at the top, and the underground mining "
        .. "is lucrative."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\n^xff0000Warning: there is a Goliath where "
            .. "you are about to be teleported to."
    end
    return str
end

-------------------------------------------------------------------------------
