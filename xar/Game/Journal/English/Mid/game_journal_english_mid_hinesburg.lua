--File: game_journal_english_mid_hinesburg.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Bronze Armor (100%)^! can be found in many places in the world.\n\n"
        .. "You can find it in the Cement Cubes of Ying Forest Air.\n\n"
        .. "Most towns and cities have this armor in them (next to a waypoint). "
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_bronze", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{20}Bronze Armor")

    local str = "^x00ff00Silver Armor (150%)^! can be found in many places in the world.\n\n"
        .. "Here is where to find some of this armor next to waypoints:\n\n"
        .. "1) ^xff00ffLarge Cannon Pyramids^!\n\n"
        .. "2) ^xff00ffBurlington Towers."
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_silver", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{30}Silver Armor")

    local str = "^x00ff00Gold Armor (200%)^! can be found in many places in the world.\n\n"
        .. "Here is where to find some of this armor next to waypoints:\n\n"
        .. "1) ^xff00ffFire Rate Moons^!."
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_gold", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{40}Gold Armor")

    local str = "^x00ff00Ivory Armor (600%)^! can be found in several places in the world. "
        .. "Here is where to find some of this armor:\n\n"
        .. "1) Small Yellow Flower treasures (sometimes)\n\n"
        .. "2) Large Cannon Pyramids\n\n"
        .. "3) Stoney Air Caves 3\n\n"
        .. "4) Alpha Cubes\n\n"
        .. "5) Small White Flowers\n\n"
        .. "6) Ivory Pinhole Gauntlets."
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_ivory", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{50}Ivory Armor")

    local str = "^x00ff00Jade Armor (1000%)^! can be found in several places in the world. "
        .. "Here is where to find some of this armor:\n\n"
        .. "1) Large Noob Mazes\n\n"
        .. "2) Ying World Slow Maze Exits\n\n"
        .. "3) Stoney Church Towers\n\n"
        .. "4) Blackberries\n\n"
        .. "5) Spirit Pockets (in I2)"
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_jade1", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{60}Jade Armor;{10}Part 1")

    local str = "6) ^xff00ffRed Maze Flowers^!\n\n"
        .. "7) Hell Flowers\n\n"
        .. "8) Jade Pinhole Gauntlets\n\n"
        .. "9) Alpha Cubes\n\n"
        .. "10) Small Black Flowers\n\n"
        .. "11) Small White Flowers (at the end of the maze)."
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_jade2", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{60}Jade Armor;{10}Part 2")

    local str = "Some places in the world you can find ^xff00ffArmor Regeneration^! "
        .. "upgrades.  Here are some places to find these upgrades:\n\n"
        .. "1) Hell Flowers\n\n"
        .. "2) The Central Core Treasure Room #1 "
        .. "(which is at the top of the Mylantis Top City)\n\n"
        .. "3) The Laser Genesis Planet\n\n"
        .. "4) Sapphire Mazes (there are some in the Laser Genesis Planet)\n\n"
        .. "5) Amethyst Mazes (in Mylantis Red Caves)."
    game_journal.add_txt(lang, "HINESBURG_INFO_LOCATIONS_regen", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{70}Armor regen upgrades")
end

-------------------------------------------------------------------------------
