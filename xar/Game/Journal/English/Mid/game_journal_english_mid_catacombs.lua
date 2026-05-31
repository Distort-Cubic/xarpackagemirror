--File: game_journal_english_mid_catacombs.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()

    local str = "You can find ^x00ff00Dark Hole Damage^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Catacombs\n\n"
        .. "2) Oak Tree dungeons\n\n"
        .. "3) Wells (especially purple ones, in I1) \n\n"
        .. "4) Williston Caves (in I1)\n\n"
        .. "5) Bubble Caves (in I2)"
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_damage1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{20}Damage upgrades;{10}Part 1")

    local str = "6) Light blue structures in Fanatic Lattices (in I2)\n\n"
        .. "7) The Minigun Forest (in I2)\n\n"
        .. "8) Pinhole Gauntlets\n\n"
        .. "9) Moon Flowers\n\n"
        .. "10) Amethyst Mazes."
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_damage2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{20}Damage upgrades;{20}Part 2")

    local str = "Here are the ^xff00ffbest^! places to find "
        .. "^x00ff00Dark Hole Damage^! upgrades:\n\n"
        .. "1) In Mystic Vines (in Willow Trees in I2)."
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_damage3", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{20}Damage upgrades;{30}Best places")

    local str = "You can find ^x00ff00Dark Hole Max Ammo^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Catacombs\n\n"
        .. "2) Oak Tree dungeons\n\n"
        .. "3) The Big Red Room (Nuke Room) of Blue Bubbles\n\n"
        .. "4) Light blue structures in Fanatic Lattices (in I2)\n\n"
        .. "5) Pinhole Gauntlets\n\n"
        .. "6) ^xff00ffFanatic Lattice^! (and the Fanatic Grass, in I2)\n\n"
        .. "7) Moon Flowers\n\n"
        .. "8) Amethyst Mazes."
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{30}Max ammo upgrades")

    local str = "You can find ^x00ff00Dark Hole Velocity^! "
        .. "upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) ^xff00ffBotany Lab Beholder Caves^!\n\n"
        .. "2) Purple Rooms in Blue Bubbles\n\n"
        .. "3) Williston Caves (in I1)\n\n"
        .. "4) Light blue structures in Fanatic Lattices (in I2)\n\n"
        .. "5) Bottom of Fanatic Island Wells (in I2)\n\n" 
        .. "6) Willow Trees (in I2)\n\n"
        .. "7) Blue Ring Station (in space)\n\n"
        .. "8) Moon Flowers\n\n"
        .. "9) Amethyst Mazes."
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_vel1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{40}Velocity upgrades;{10}Part 1")

    local str = "Here are the ^xff00ffbest^! places to find "
        .. "^x00ff00Dark Hole Velocity^! upgrades:\n\n"
        .. "1) Catacombs. "
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_vel2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{40}Velocity upgrades;{20}Best places")

    local str = "There are a couple places to find ^x00ff00Dark Hole ammo^! (holes) "
        .. "in the world. Note that you can get more ammo by using the secondary fire. "
        .. "Here are some of the best places to find holes next to a waypoint:\n\n"
        .. "1) At the top of the central Burlington Tower."
    game_journal.add_txt(lang, "CATACOMBS_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{50}Ammo")

    ---------------------------------------------

    local str = "The ^x00ff00Black Hole Drive^! decreases your air drag "
        .. "for 30 seconds and thus allows you to move faster.\n\n"
        .. "It costs 20 dark hole ammo.\n\n"
        .. "^xff00ffNote that Rocket Mode must be on to experience the effect.^!"
    game_journal.add_txt(lang, "CATACOMBS_WEAPON_MOD_part1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_3;{30}Control panel;{10}Part 1")

    local str = "However, moving faster slows down the game if your level "
        .. "radius is too large (too many chunks are loaded per second).\n\n"
        .. "Because of this, it is possible to set an ^xff0000alternate level "
        .. "radius^! that is used (for the finest level of detail) "
        .. "when you experience the Black Hole Drive effect.\n\n"
        .. "You set that alternate radius here, in the control panel. "
    game_journal.add_txt(lang, "CATACOMBS_WEAPON_MOD_part2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_3;{30}Control panel;{20}Part 2")
end

-------------------------------------------------------------------------------
