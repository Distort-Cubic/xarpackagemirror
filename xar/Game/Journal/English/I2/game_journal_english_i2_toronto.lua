--File: game_journal_english_i2_toronto.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "TORONTO", p.TORONTO)
    game_journal.add_path("@area;@area_i2;@area_i2_city;@area_i2_city_toronto;{10}Overview part 1")

    game_journal.add_txt_cb(lang, "TORONTO_PENTHOUSE", p.TORONTO_PENTHOUSE)
    game_journal.add_path("@area;@area_i2;@area_i2_city;@area_i2_city_toronto;{20}Overview part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "So when I would enter the Xar world in my mind at work, "
        .. "while I would solve the mazes for my job I would feel "
        .. "an Inner Core grow inside me.\n\n"
        .. "I wondered how this was possible. "
        .. "I became convinced that the mazes had hidden extra data "
        .. "attached to them, "
        .. "which the hidden part of my mind would process.\n\n"
        .. "When I entered the Xar world in my mind in my apartment, "
        .. "I could feel smaller Inner Cores enter and leave my mind."
    game_journal.add_txt(lang, "TORONTO_FRIEND_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;@yang_ima_apt_mic;{10}Part 1")

    local str = "^x00ff00For example, "
        .. "when I got a TV dinner out of the freezer, "
        .. "I looked at the box to find the number of minutes X "
        .. "to put it in the microwave, "
        .. "followed by peeling away the plastic, "
        .. "followed by putting it in the microwave "
        .. "for an additional Y minutes.\n\n"
        .. "I would always simply add X and Y and "
        .. "put it in the microwave once with that number.\n\n"
        .. "When my mind was in the Xar world "
        .. "and I tried to add X and Y, "
        .. "I was struck by how bad the design of the box was."
    game_journal.add_txt(lang, "TORONTO_FRIEND_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;@yang_ima_apt_mic;{20}Part 2")

    local str = "^x00ff00"
        .. "It took way too much mental energy to find the two numbers "
        .. "and add them together.\n\n"
        .. "I perceived that there was "
        .. "extra hidden data attached to the box, "
        .. "and me finding X and Y and then adding them "
        .. "was like solving a problem.\n\n"
        .. "That is, it was like some entity was getting some kind of "
        .. "computing resource out of me.\n\n"
        .. "Like I was a calculator.\n\n"
        .. "This freaked me out so much that I put the box back in the "
        .. "freezer and I ate an apple instead."
    game_journal.add_txt(lang, "TORONTO_FRIEND_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;@yang_ima_apt_mic;{30}Part 3")

    local str = "^x00ff00"
        .. "When I was at work solving mazes "
        .. "while my mind was in the Xar world, "
        .. "I would perceive a vision of a room filled with "
        .. "super computers. "
        .. "I had access to their computational power.\n\n"
        .. "At some point at work, I perceived "
        .. "my mind having access to a colossal computer powered by a "
        .. "^xff00ffDyson swarm^x00ff00.\n\n"
        .. "A Dyson swarm is an array of spaceships surrounding "
        .. "a star to capture some of its energy. "
        .. "But I imagine you already know what a Dyson swarm is "
        .. "because of the job you do."
    game_journal.add_txt(lang, "TORONTO_FRIEND_k_part4", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;@yang_ima_apt_mic;{40}Part 4")

    p.nuke_locations()
end

function p.TORONTO(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Toronto^!!\n\n";
    if( not game_genesis.enabled() ) then
        str = str .. "Inside there is a waypoint next to a ^xffff00scarce^! sell station.\n\n"
    end
    str = str .. "There is a maze inside, and one room contains a ^xff00ffRainbow Flower^!. "
    if( not game_genesis.enabled() ) then
        str = str .. "Also in the maze you can get the ^xff00ffTommy Gun^! weapon mode (for your Cannon). ";
    end
    return str
end

function p.TORONTO_PENTHOUSE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Toronto^!!\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "We have many apple trees, a jumbo yellow flower, "
            .. "and a ^xff00ffscarce selling station^!.\n\n"
    end
    if( ga_get_b("worldgen.state.one_way") ) then
        str = str .. "To leave Toronto (besides using a waypoint), "
            .. "you need to go by a ^xffffffWhite box Device^!.\n\n"
    end
    str = str .. "Below there is a maze, and one room in the maze contains "
        .. "a ^xff00ffRainbow Flower^!. ";
    return str
end

function p.nuke_locations()
    local str = "You can find ^x00ff00Nuke Damage^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) the big Red Room (Nuke Room) of Blue Bubbles\n\n"
        .. "2) Williston EMP castles\n\n"
        .. "3) ^xff00ffI3 Main Forest^! (in I3)\n\n"
        .. "4) Belle Rosette in Desert Caves (in I3)"
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_damage1", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{20}Damage upgrades;{10}Part 1")

    local str = "5) Desert Flowers (in Deserts in I3)\n\n"
        .. "6) Mahogany Basements (in I3)\n\n"
        .. "7) High Gold Asteroids\n\n"
        .. "8) Fire Rate Moons\n\n"
        .. "9) Gamma Moons\n\n"
        .. "10) ^xff00ffon the surfaces of planets^!."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_damage2", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{20}Damage upgrades;{20}Part 2")

    local str = "Here are the ^xff00ffbest^! places to find "
        .. "^x00ff00Nuke Damage^! upgrades:\n\n"
        .. "1) In Alpha Menger Sponges (in Outer Space Level 2)."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_damage3", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{20}Damage upgrades;{30}Best places")

    local str = "You can find ^x00ff00Nuke Max Ammo^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) ^xff00ffthe big Red Room (Nuke Room) of Blue Bubbles^!\n\n"
        .. "2) Huntington towns\n\n"
        .. "3) ^xff00ffDanville Towns^!\n\n"
        .. "4) Small Blue Flowers\n\n"
        .. "5) Spirit Pockets (in Wells of Fanatic Islands in I2)"
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_max_ammo1", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{30}Max ammo upgrades;{10}Part 1")

    local str = "6) ^xff00ffColchester Towns^!\n\n"
        .. "7) Desert Caves (in I3)\n\n"
        .. "8) ^xff00ffSalmon Mushrooms^! (in I3)\n\n"
        .. "9) Gamma Moons\n\n"
        .. "10) ^xff00ffon the surfaces of planets^!\n\n"
        .. "11) ^xff00ffBurlington Cities^!\n\n"
        .. "12) Hell Flowers\n\n"
        .. "13) The secret entrance of Small Black Flowers."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_max_ammo2", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{30}Max ammo upgrades;{20}Part 2")

    local str = "You can find ^x00ff00Nuke Velocity^! "
        .. "upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Oak Tree Dungeons\n\n"
        .. "2) Williston Zubeneschamali Castles\n\n"
        .. "3) ^xff00ffSpirit Pockets^! (in Wells of Fanatic Islands in I2)\n\n"
        .. "4) Bubble Cave Blue Abomination Treasure (in I2)\n\n"
        .. "5) ^xff00ffDanville Towns^!\n\n"
        .. "6) Toronto Cities\n\n"
        .. "7) EMP Cities (in I2)";
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_vel1", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{40}Velocity upgrades;{10}Part 1")

    local str = "8) Bottom of Fanatic Island Well (in I2)\n\n" 
        .. "9) Minigun Forest Tree Trunks (in I2)\n\n"
        .. "10) Small Blue Flower (in I2)\n\n"
        .. "11) Desert Caves (in I3)\n\n"
        .. "12) Mahogany Basements (in I3)\n\n"
        .. "13) Gamma Moons\n\n"
        .. "14) ^xff00ffon the surfaces of planets^!\n\n"
        .. "15) ^xff00ffBurlington Cities^!. ";
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_vel2", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{40}Velocity upgrades;{20}Part 2")

    local str = "Here are the ^xff00ffbest^! places to find "
        .. "^x00ff00Nuke Velocity^! upgrades:\n\n"
        .. "1) In Alpha Menger Sponges (in Outer Space Level 2)\n\n"
        .. "2) I3 Main Forest (in I3)."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_vel3", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{40}Velocity upgrades;{30}Best places")

    local str = "You can find ^x00ff00Nuke Radius^! "
        .. "upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) ^xff00ffBlackberries^!\n\n"
        .. "2) Bubble Cave Blue Abomination Treasure (in I2)\n\n"
        .. "3) Small Blue Flowers\n\n"
        .. "4) ^xff00ffToronto Cities^!\n\n"
        .. "5) Desert Caves (in I3)"
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_radius1", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{50}Radius upgrades;{10}Part 1")

    local str = "6) Gamma Moons\n\n"
        .. "7) ^xff00ffon the surfaces of planets^!\n\n"
        .. "8) Suns\n\n"
        .. "9) ^xff00ffBurlington Cities^!\n\n"
        .. "10) Hell Flowers."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_radius2", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{50}Radius upgrades;{20}Part 2")

    local str = "There are several places to find ^x00ff00nuke ammo^! (nukes) "
        .. "in the world. However note that you cannot buy them from normal stores "
        .. "(only Black Markets). "
        .. "Here are some of the best places to find nukes in the world:\n\n"
        .. "1) In Nuclear Silos under the surface of Mylantis. "
        .. "Some of these Silos hold 20 nukes.  You just need to figure out how to "
        .. "teleport to them."
    game_journal.add_txt(lang, "TORONTO_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{60}Ammo")
end

-------------------------------------------------------------------------------
