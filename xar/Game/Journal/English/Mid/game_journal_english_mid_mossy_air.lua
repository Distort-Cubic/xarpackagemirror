--File: game_journal_english_mid_mossy_air.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^x00ff00Mossy Air^! (part of the Main Branch).\n\n"
        .. "To continue down the Main Branch into inner space, explore the things "
        .. "that grow on the sides of the ^x00ff00Black Cubes^! in the air. "
        .. "Things grow on the sides of these Black Cubes."
    game_journal.add_txt(lang, "MOSSY_AIR", str)
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{50}Mossy air to black cube")
    game_journal.add_path("@area;@area_mid;@area_mid_mossy;{10}Overview")

    game_journal.add_txt_cb(lang, "MOSSY_AIR_ISLAND_README", p.MOSSY_AIR_ISLAND_README)
    game_journal.add_path("@area;@area_mid;@area_mid_mossy;{20}Island overview")

    local str = "When you touch this powerup, "
        .. "for a limited amount of time the following will happen: "
        .. "whenever you gain experience, it will be "
        .. "^x00ff00multiplied by 5^!.\n\n"
        .. "If you pick up another one of these "
        .. "Powerups before the current one "
        .. "has worn off, the time will ^x00ff00stack^!."
    game_journal.add_txt(lang, "MOSSY_AIR_ISLAND_BONUS", str)
    game_journal.add_path("@item;@item_xp_mod;{10}Overview")

    local str = "Each Mossy Island has different treasure. "
        .. "Here are all the possibilities for the upgrades "
        .. "(they are all equally likely):\n\n"
        .. "Health\n"
        .. "Plasma Damage\n"
        .. "Plasma Regeneration\n"
        .. "Cannon Damage\n"
        .. "Cannon Max Ammo\n"
        .. "Laser Damage\n"
        .. "Minigun Damage\n"
        .. "Rocket Damage\n"
        .. "Rocket Max Ammo\n"
        .. "Rocket Radius"
    game_journal.add_txt(lang, "MOSSY_AIR_CAVE_TREASURE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_mossy;{30}Island treasure types")

    p.railgun_locations()
end

function p.MOSSY_AIR_ISLAND_README(chunk_id)
    --Ignoring chunk_id.
    local str = "Within Mossy Air, you are now standing on "
        .. "a ^x00ff00Mossy Island^!. "
        .. "On the surfaces of these islands "
        .. "(at the size you are now) you can find "
        .. "Buttercups as well as Rail Towers.\n\n"
        .. "If you shrink one more time, you will find shafts "
        .. "in the ground that lead to a cave system below. "
    if( not game_genesis.enabled() ) then
        str = str .. "Each island has different monsters and treasures.\n\n"
    end
    str = str .. "At the bottom of the cave system is a cavern. "
        .. "There are 3 types of these caverns. "
        .. "One of them contains the town of ^x00ff00Jericho^!. "
    if( not game_genesis.enabled() ) then
        str = str .. "^xff00ffIn Jericho you can buy markers for 4 gold.^! "
    end
    str = str .. "Next to these Jericho towns you can find Catacombs. "
    return str
end

function p.railgun_locations()
    local str = "You can find ^x00ff00Railgun Damage^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Large Cannon Pyramids\n\n"
        .. "2) Rail Towers\n\n"
        .. "3) Black Cubes in Mossy Air (you are in one now)\n\n"
        .. "4) Ice Cubes\n\n"
        .. "5) Catacombs\n\n"
        .. "6) The big Red Room (Nuke Room) of Blue Bubbles"
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_damage1", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{30}Damage upgrades;{10}Part 1")

    local str = "7) Wells (in I1)\n\n"
        .. "8) Williston Caves (in I1)\n\n"
        .. "9) Toronto Maze Map Rooms\n\n"
        .. "10) Spirit Pockets (in Wells of Fanatic Islands in I2)\n\n"
        .. "11) Small Blue Flowers\n\n"
        .. "12) Montreal Cities\n\n"
        .. "13) I2 Libraries"
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_damage2", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{30}Damage upgrades;{20}Part 2")

    local str = "14) Healing Patches (in I2)\n\n"
        .. "15) ^xff00ffWoody Basements and Cellars^! (in Fanatic Islands in I2)\n\n"
        .. "16) Willow Trees (in Fanatic Islands in I2)\n\n"
        .. "17) Rail Showdown Caves\n\n"
        .. "18) Burlington Cities\n\n"
        .. "19) ^xff00ffSalmon Mushrooms^! (in I3)."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_damage3", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{30}Damage upgrades;{30}Part 3")

    local str = "You can find ^x00ff00Railgun Max Ammo^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Large Cannon Pyramids\n\n"
        .. "2) ^xff00ffBlack Cubes in Mossy Air^!\n\n"
        .. "3) At the end of Catacombs\n\n"
        .. "4) ^xff00ffSteel Boxes^!\n\n"
        .. "5) Williston Caves (in I1)"
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_max_ammo1", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{40}Max ammo upgrades;{10}Part 1")

    local str = "6) Fanatic Island Willow Trees (in I2)\n\n"
        .. "7) ^xff00ffWoody Cellars^! (in Fanatic Islands)\n\n"
        .. "8) Small Blue Flowers (in I2)\n\n"
        .. "9) ^xff00ffToronto Cities^!\n\n"
        .. "10) Rail Showdown Caves\n\n"
        .. "11) Salmon Mushrooms (in I3)."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_max_ammo2", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{40}Max ammo upgrades;{20}Part 2")

    local str = "Here are the ^xff00ffbest^! places to find "
        .. "^x00ff00Railgun Max Ammo^! upgrades:\n\n"
        .. "1) Camel's Hump in Huntington Towns\n\n"
        .. "2) Blue Mushrooms."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_max_ammo3", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{40}Max ammo upgrades;{30}Best places")
    
    local str = "You can find ^x00ff00Railgun Fire Rate^! upgrades in several places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "will give you a Railgun Damage upgrade. "
        .. "Here are some places to find these Fire Rate upgrades:\n\n"
        .. "1) Small Laser Forts\n\n"
        .. "2) Stoney Churches (at the top of their towers)\n\n"
        .. "3) Huntington Towns (in the center of Oranges)\n\n"
        .. "4) ^xff00ffBase Camp rooms in Infinity Flowers^!\n\n"
        .. "5) Williston Caves\n\n"
        .. "6) ^xff00ffBlue Mushrooms^!."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_fire_rate1", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{40}Fire rate upgrades;{10}Part 1")

    local str = "7) Bubble Cave Blue Abomination Treasure (in I2)\n\n"
        .. "8) ^xff00ffWoody Basements and Cellars^! (in Fanatic Islands in I2)\n\n"
        .. "9) Small Blue Flowers\n\n"
        .. "10) ^xff00ffColchester Towns^!\n\n"
        .. "11) Rail Showdown Caves\n\n"
        .. "12) Hell Flower Henry Street Delis."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_fire_rate2", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{40}Fire rate upgrades;{20}Part 2")

    local str = "There are many places to find ^x00ff00Railgun ammo^! (rails) "
        .. "in the world. Here are some such places:\n\n"
        .. "1) ^xff00ffStoney Caves 2^!\n\n"
        .. "2) The centers of ^xff00ffBlue Mushrooms^!."
    game_journal.add_txt(lang, "MOSSY_AIR_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{50}Ammo")
end

-------------------------------------------------------------------------------
