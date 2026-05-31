--File: game_journal_english_yw_small_cannon_pyramid.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I have learned the following that may help you:\n\n"
        .. "In a Richmond city, buildings with a question mark "
        .. "at the top have a map of the Tau Caves. "
        .. "However, the map is incomplete! \n\n"
        .. "The map says that Type 3 Tau Caves have paper and cardboard boxes. "
        .. "What the map does NOT say is that Type 3 Tau Caves also have "
        .. "blue cubes (Basic Laser Mazes). "
        .. "Their treasure room is worth visiting at least once.^! "
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_TREASURE_k_1", str)
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_large;{10}Basic laser mazes contain a hint;{10}Part 1")

    local str = "^x00ff00"
        .. "Specifically, I think their treasure room describes a "
        .. "slight shortcut down the main branch that will allow you to "
        .. "skip an \"Orange\". ";
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_TREASURE_k_2", str)
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_large;{10}Basic laser mazes contain a hint;{20}Part 2")

    ---------------------------------------------

    local str = "You can find ^x00ff00Cannon Damage^! upgrades in many places. "
        .. "Note that just outside every Orange Flower is a Cannon Damage upgrade. "
        .. "Here are some places to find these damage upgrades:\n\n"
        .. "1) Tau Caves (especially in Richmond Sewers)\n\n"
        .. "2) Botany Labs\n\n"
        .. "3) The Fanatic Lattice in I2."
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_damage", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{20}Damage upgrades")

    local str = "You can find ^x00ff00Cannon Max Ammo^! upgrades in many places. "
        .. "Some places to find these upgrades:\n\n"
        .. "1) Steel Boxes\n\n"
        .. "2) Red Apples of Apple Trees."
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{30}Max ammo upgrades")

    local str = "^x00ff00Cannon Num Shot^! upgrades can be found in several places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "gives you either a Cannon Damage or Max Ammo upgrade. "
        .. "Some places you can find these Num Shot upgrades:\n\n"
        .. "1) Small Cannon Pyramids\n\n"
        .. "2) Large Cannon Pyramids\n\n"
        .. "3) Richmond Towns (in their penthouses and sewers)\n\n"
        .. "4) Small Cannon Gyms (at the top of Fanatic Weeds, in I2)\n\n"
        .. "5) The secret entrance of Small Black Flowers."
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_num_shot", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{30}Num shot upgrades")

    local str = "^x00ff00Cannon Velocity^! upgrades can be found in several places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "gives you either a Cannon Damage or Max Ammo upgrade. "
        .. "For the most part, you can find these in the same places you find "
        .. "Cannon Num Shot upgrades. You can also find these Velocity "
        .. "upgrades in the following places:\n\n"
        .. "1) The topmost room of Ying Flowers\n\n"
        .. "2) The Guerrilla Jungle in I2 (inside the Minigun Forest). "
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_vel", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{40}Velocity")

    local str = "^x00ff00Cannon Fire Rate^! upgrades can be found in several places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "gives you either a Cannon Damage or Max Ammo upgrade. "
        .. "For the most part, you can find these in the same places you find "
        .. "Cannon Num Shot upgrades. "
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_fire_rate", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{50}Fire rate")

    local str = "There are many places to find ^x00ff00Cannon ammo^! (shells) "
        .. "in the world. Here are some such places:\n\n"
        .. "1) The buildings that are orange with an X at the top inside "
        .. "Small Yellow Flowers (they have Mercenaries). "
    game_journal.add_txt(lang, "LARGE_CANNON_PYRAMID_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{60}Ammo")
end

-------------------------------------------------------------------------------
