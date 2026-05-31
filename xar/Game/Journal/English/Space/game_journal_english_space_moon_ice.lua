--File: game_journal_english_space_moon_ice.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "MOON_ICE_MOD_WP2",
        p.MOON_ICE_MOD_WP2)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_ice;{10}Overview")

    p.laser_locations()
end

function p.MOON_ICE_MOD_WP2(chunk_id)
    --Ignoring chunk_id.
    local str = ""
    if( game_genesis.enabled() ) then
        str = "This is an ^x00ff00Ice Moon^!!\n\n"
            .. "At the center there are many tubes. "
    else 
        str = "This is an ^x00ff00Ice Moon^!!\n\n"
            .. "When you go beneath the surface, you will find tunnels "
            .. "and sporadic ^x00ff00Laser Damage^! upgrades.\n\n"
            .. "There are also Ice Cubes everywhere, which are useful "
            .. "because 1) there is EMP ammo in their treasure rooms and "
            .. "2) there are ^x00ff00Blue Bubbles^! near their treasure rooms.\n\n"
            .. "In the caves between the Ice Cubes you can find Laser Ammo "
            .. "not too far from waypoints.\n\n"
            .. "In the center of the planet are Ice Cubes with more treasure. "
            .. "In the very center of the planet there is a ^x00ff00Laser Max Ammo^! upgrade "
            .. "and also a lot of Laser ammo next to an in-only waypoint. ";
    end
    return str
end

function p.laser_locations()
    local str = "You can find ^x00ff00Laser Damage^! upgrades in many places. "
        .. "Here are some notable locations:\n\n"
        .. "1) Alpha Cubes\n\n"
        .. "2) Gamma and Ice Moons (you are in an Ice Moon now)\n\n"
        .. "3) Williston Caves."
    game_journal.add_txt(lang, "MOON_ICE_INFO_LOCATIONS_damage", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{20}Damage upgrades")

    local str = "^x00ff00Laser Max Ammo^! upgrades are less common. "
        .. "You typically find them at the end of a big maze or a long dungeon.\n\n"
        .. "A place early on you can find these upgrades is in Stoney Air Caves 3."
    game_journal.add_txt(lang, "MOON_ICE_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{30}Max ammo upgrades")

    local str = "^x00ff00Laser Freeze Time^! upgrades can be found in several places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "gives you a Laser Damage upgrade. "
        .. "Some places you can find these Freeze Time upgrades:\n\n"
        .. "1) Ice Moons (you are in one now)\n\n"
        .. "2) Ice Cubes (hard ones have 2x upgrades)\n\n"
        .. "3) Laser Forts\n\n"
        .. "4) Williston Caves\n\n"
        .. "5) The storage room below the 8 nukes in the Mylantis Top City\n\n"
        .. "6) The Central Core Treasure Room #1 "
        .. "(which is at the top of the Mylantis Top City)."
    game_journal.add_txt(lang, "MOON_ICE_INFO_LOCATIONS_freeze_time", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{40}Freeze time upgrades")

    local str = "^xff00ffLaser Super^! upgrades "
        .. "are some of the most rare upgrades in the universe. "
        .. "You can find some in the following place:\n\n"
        .. "1) The Central Core Treasure Room #1 "
        .. "(which is at the top of the Mylantis Top City)\n\n"
        .. "2) The Laser Genesis Planet\n\n"
        .. "3) Sapphire Mazes (there are some in the Laser Genesis Planet)."
    game_journal.add_txt(lang, "MOON_ICE_INFO_LOCATIONS_super", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{50}Super damage upgrades")

    local str = "There are many places to find ^x00ff00Laser ammo^! (cells) "
        .. "in the world. Here are some of the ^xff00ffbest^! places:\n\n"
        .. "1) Ice Moons (you are in one now: shrink into the caves). "
        .. "Note: the Pink Rings in an Ice Moon are more useful in an "
        .. "Ice Castle, where the Ice Moon is next to a waypoint.\n\n"
        .. "2) The surface of the Laser Genesis Planet."
    game_journal.add_txt(lang, "MOON_ICE_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{56}Ammo")
end

-------------------------------------------------------------------------------
