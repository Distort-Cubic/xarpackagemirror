--File: game_journal_english_yw_gated_community.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "There are two special waypoints here.\n\n"
        .. "The top yellow one is an \"^xffff00in-only^!\" waypoint. "
        .. "You can travel TO it (after you activate it), but you cannot "
        .. "travel FROM it.\n\n"
        .. "The bottom red one is a \"^xff0000out-only^!\" waypoint. "
        .. "You can travel FROM it, but not TO it.\n\n"
        .. "Feel free to experiment."
    game_journal.add_txt(lang, "YW_GATEDCOM_WP_IN_in_out", str)
    game_journal.add_path("@basic;@basic_waypoint;{50}In-only and out-only waypoints")

    local str = "Here is another waypoint tip: "
        .. "When you first enable a waypoint, you can give it a name. "
        .. "If you forget to give it a name, or give it the wrong name, "
        .. "simply hide the waypoint and then unhide it again. "
        .. "When you select the unhide option, ^x00ff00you can give it the "
        .. "name you want^!."
    game_journal.add_txt(lang, "YW_GATEDCOM_WP_IN_rename_tip", str)
    game_journal.add_path("@basic;@basic_waypoint;{40}Renaming tip")

    local str = "This is the ^x00ff00Library for the Ying World^!!\n\n"
        .. "It contains the totem poles "
        .. "that you may have already found in the world.\n\n"
        .. "It also has additional useful information."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_1_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{10}Overview")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Right now you are inside a Ying World. "
        .. "A Ying World is but a bubble. "
        .. "An enclosed space if you will. "
        .. "To find a Key to the Universe you must escape "
        .. "this Ying World and find the ^xff00ffMain Branch^!^x00ff00. "
        .. "This is a labeled path going deep into inner space "
        .. "which leads to where you can find Inner Cores "
        .. "(and a Key to the Universe).\n\n"
        .. "You can learn how to escape a Ying World "
        .. "from this Library for the Ying World. "
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_1_k_1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{20}K message;{10}Part 1")

    local str = "^x00ff00At least I think you must escape the Ying World "
        .. "to find the Main Branch. "
        .. "I don't think you can start your descent down it "
        .. "from inside a Ying World... "
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_1_k_2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{20}K message;{20}Part 2")

    local str = "When you shrink and fly around the air of "
        .. "a Ying forest, you will find many gray cubes. "
        .. "If you go into one of these cubes, you will see a "
        .. "picture of a house inside.  There is often something "
        .. "useful behind pictures.\n\n"
        .. "Go into the basement of the gray cube. "
        .. "In the 4 corners of that room, there is a totem pole "
        .. "(the same in each corner) with a useful tip. "
        .. "^xff00ffIt is a good idea to look for secrets!^! "
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_5", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_air;{10}Gray cube;{10}Corner hint;{10}Where to find hint;{20}Version 2")

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_LIB_7_black_flower",
        p.YW_GATEDCOM_LIB_7_black_flower)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{30}Small black flower")
    game_journal.add_path("@area;@area_yw;@area_yw_flower;{40}Small black flower")

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_LIB_8", p.YW_GATEDCOM_LIB_8)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{60}How to leave ying world;{10}Method 1")

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_LIB_8B", p.YW_GATEDCOM_LIB_8B)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{60}How to leave ying world;{20}Method 2")

    local str = "When flying between large Ying World islands, "
        .. "you will notice that the air has ^xff00ffsmall 3x3 islands^! in it. "
        .. "These islands (called ^x00ff00Ying Cave Islands^!) have caves in them "
        .. "(called ^x00ff00Ying Caves^!).\n\n"
        .. "In the first layer of detail of these caves, you can find yellow treasure rooms "
        .. "called \"layer 1 treasure rooms\". "
        .. "There is a chance that one of these will allow you to shrink, "
        .. "and if you shrink one more time you can enter red "
        .. "\"layer 2 treasure rooms\". "
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_9_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{50}Ying cave island;{10}Part 1")

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_LIB_9_part2", p.YW_GATEDCOM_LIB_9_part2)
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{50}Ying cave island;{20}Part 2")

    p.max_out_upgrades()

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_ROOF_1", p.YW_GATEDCOM_ROOF_1)
    game_journal.add_path("@basic;@basic_waypoint;{60}Temp waypoint")

    local str = "Remember that you can drop a ^x00ff00long^! marker by pressing M "
        .. "for at least one second.\n\n"
        .. "If you use a long marker, then you have the option to set it "
        .. "as your ^x00ff00tracking marker^!. "
        .. "When you do this, then your screen will show you your distance "
        .. "to this marker as well as its direction to you.\n\n"
        .. "In MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> MARKERS "
        .. "you can turn off your tracking marker. "
    game_journal.add_txt(lang, "YW_GATEDCOM_STORE_marker1", str)
    game_journal.add_path("@basic;@basic_marker;@basic_marker_tracking;{20}Direction and distance to tracking marker")
    game_journal.add_path("@basic;@basic_marker;@basic_marker_tracking;{30}Turning off tracking marker")
    game_journal.add_path("@basic;@basic_hud;{50}Tracking marker")

    game_journal.add_txt_cb(lang, "YW_GATEDCOM_STORE_marker2", p.YW_GATEDCOM_STORE_marker2)
    game_journal.add_path("@basic;@basic_marker;{60}Buying markers at a store")
end

function p.YW_GATEDCOM_LIB_7_black_flower(chunk_id)
    --Ignoring chunk_id.
    local str = "You may have also noticed that "
        .. "there are ^x00ff00Small Black Flowers^! "
        .. "within a Ying Forest.\n\n"
    if game_genesis.enabled() then
        str = str .. "Inside there is a 4 layer maze. "
    else
        str = str .. "Inside them you go through a long maze, but the treasure "
            .. "includes ^xff00ff13 health upgrades^! "
            .. "as well as a Laser and Minigun upgrade. "
    end
    return str
end

function p.YW_GATEDCOM_LIB_8(chunk_id)
    --Ignoring chunk_id.
    local str = ""
    if game_genesis.enabled() then
        str = str .. "In the non-Genesis version of the game, "
            .. "one way to leave the Ying World is as follows: "
            .. "become large and fly through the "
            .. "the world, going past many islands, "
            .. "until you reach either the front, back, left, "
            .. "or right wall.  You can go through the (black) wall by "
            .. "going through tunnels. You will find yourself "
            .. "in a large room with a yin-yang pattern on the walls. "
            .. "Exit that room and the 3 containing rooms.\n\n"
            .. "^xff0000However in the Genesis version of the game, "
            .. "you need to find a different way. "
            .. "To learn how, go to the top floor of the Library "
            .. "in a Ying World Gated Community. "
    else
        str = str .. "One way to leave the Ying World is as follows: "
            .. "become large and fly through the "
            .. "the world, going past many islands, "
            .. "until you reach either the front, back, left, "
            .. "or right wall.  You can go through the (black) wall by "
            .. "going through tunnels. You will find yourself "
            .. "in a large room with a yin-yang pattern on the walls. "
            .. "Exit that room and the 3 containing rooms.\n\n"
            .. "Note: in one of the shell rooms you can find a "
            .. "green island, which contains a list and the locations "
            .. "of all Ying World Trophies. "
    end
    return str
end

function p.YW_GATEDCOM_LIB_8B(chunk_id)
    --Ignoring chunk_id.
    local str = "There is another way to leave the Ying World, "
        .. "^xff0000but it is time consuming^!!\n\n"
        .. "Go to the gray lattice which surrounds the "
        .. "islands of the Ying World. "
        .. "If you shrink and fly through the gray bars of the lattice, "
        .. "you will eventually find an island. "
        .. "That island has a 7x7x7 maze inside it.\n\n"
        .. "If you get through the maze, you will find a "
        .. "Pink Ring Device which will take you outside the Ying World. "
    if( not game_genesis.enabled() ) then
        str = str .. "\n\n^xff00ffThe island also has a \"Minigun Tower\" on it!^!"
    end
    return str
end

function p.YW_GATEDCOM_LIB_9_part2(chunk_id)
    --Ignoring chunk_id.
    local str = "You can explore the caves outside these layer 2 treasure rooms "
        .. "to find yellow \"layer 3 treasure rooms\". "
    if( not game_genesis.enabled() ) then
        str = str .. "Those are special because there you can get upgrades for your "
            .. "^x00ff00Laser^!.\n\n"
    end
    str = str .. "Finally, the green cubes you can find on that "
        .. "layer are actually \"layer 4 treasure rooms\"."
    if( not game_genesis.enabled() ) then
        str = str .. "Those are special because there you can get "
            .. "^x00ff00Health and Minigun upgrades.^!"
    end
    return str
end

function p.max_out_upgrades()
    local str = "It is possible to max out your upgrades for certain stats. "
        .. "For example, you can have at most 46 Plasma Velocity upgrades. "
        .. "When you have less than this number, if you press F2 to look at "
        .. "your stats, you will see that the number of Plasma Velocity "
        .. "upgrades you have is in ^xffff00yellow^!. "
        .. "Once you have the maximum number of 46, the stat will appear ^x00ff00green^!. "
        .. "Stats which you can have an unlimited number of just appear "
        .. "in the normal color. "
        .. "There are also stats for some very rare upgrades which appear purple."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_overview1", str)
    game_journal.add_path("@wep;@wep_gen;@wep_gen_max;{10}Overview")

    local str = "Once you have the maximum number of Plasma Velocity upgrades, "
        .. "any additional Plasma Velocity upgrade you pick up "
        .. "will do the following:\n\n"
        .. "33% of the time you will get a Plasma Max Ammo upgrade,\n\n"
        .. "33% of the time you will get a Plasma Ammo Regeneration upgrade,\n\n"
        .. "34% of the time you will get a Plasma Damage upgrade.\n\n"
        .. "This room (in the Ying World Gated Community Library) "
        .. "describes what will happen when you pick up an upgrade "
        .. "after maxing out the associated stat. "
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_overview2", str)
    game_journal.add_path("@wep;@wep_gen;@wep_gen_max;{20}Example")

    local str = "After maxing out ^x00ff00Plasma Fire Rate^!:\n\n"
        .. "33% Plasma Max Ammo\n"
        .. "33% Plasma Ammo Regeneration\n"
        .. "34% Plasma Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_plasma_fire_rate", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_max;{20}Maxing out fire rate")

    local str = "After maxing out ^x00ff00Plasma Velocity^!:\n\n"
        .. "33% Plasma Max Ammo\n"
        .. "33% Plasma Ammo Regeneration\n"
        .. "34% Plasma Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_plasma_vel", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_max;{10}Maxing out velocity")

    local str = "After maxing out ^x00ff00Cannon Fire Rate^!:\n\n"
        .. "50% Cannon Max Ammo\n"
        .. "50% Cannon Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_cannon_fire_rate", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_max;{30}Maxing out fire rate")

    local str = "After maxing out ^x00ff00Cannon Velocity^!:\n\n"
        .. "50% Cannon Max Ammo\n"
        .. "50% Cannon Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_cannon_vel", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_max;{20}Maxing out velocity")

    local str = "After maxing out ^x00ff00Cannon Num Shots^!:\n\n"
        .. "50% Cannon Max Ammo\n"
        .. "50% Cannon Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_cannon_num_shots", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_max;{10}Maxing out num shots")

    local str = "After maxing out ^x00ff00Laser Freeze Time^!:\n\n"
        .. "66% Laser Damage\n"
        .. "34% Laser Max Ammo."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_laser_freeze_time", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_max;{10}Maxing out freeze time")

    local str = "After maxing out ^x00ff00Rocket Fire Rate^!:\n\n"
        .. "33% Rocket Max Ammo\n"
        .. "33% Rocket Damage\n"
        .. "34% Rocket Velocity."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_rocket_fire_rate", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_max;{10}Maxing out fire rate")

    local str = "After maxing out ^x00ff00Rocket Radius^!:\n\n"
        .. "33% Rocket Max Ammo\n"
        .. "33% Rocket Damage\n"
        .. "34% Rocket Velocity."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_rocket_radius", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_max;{20}Maxing out radius")

    local str = "After maxing out ^x00ff00Homing Rocket Fire Rate^!:\n\n"
        .. "50% Homing Rocket Max Ammo\n"
        .. "50% Homing Rocket Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_homing_fire_rate", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_max;{20}Maxing out fire rate")

    local str = "After maxing out ^x00ff00Homing Rocket Velocity^!:\n\n"
        .. "50% Homing Rocket Max Ammo\n"
        .. "50% Homing Rocket Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_homing_vel", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_max;{10}Maxing out velocity")

    local str = "After maxing out ^x00ff00Minigun Fire Rate^!:\n\n"
        .. "50% Minigun Max Ammo\n"
        .. "50% Minigun Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_mini_fire_rate", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_max;{20}Maxing out fire rate")

    local str = "After maxing out ^x00ff00Minigun Velocity^!:\n\n"
        .. "100% Minigun Damage."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_mini_vel", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_max;{10}Maxing out velocity")

    local str = "After maxing out ^x00ff00Railgun Fire Rate^!:\n\n"
        .. "66% Railgun Damage\n"
        .. "34% Railgun Max Ammo."
    game_journal.add_txt(lang, "YW_GATEDCOM_LIB_MAX_UPGRADES_railgun_fire_rate", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_max;{10}Maxing out fire rate")
end

function p.YW_GATEDCOM_ROOF_1(chunk_id)
    --Ignoring chunk_id.
    local str = "Frequently you might find a waypoint X, and then "
        .. "use it to teleport to a town with a waypoint Y "
    if( not game_genesis.enabled() ) then
        str = str .. "to buy or sell equipment, "
    end
    str = str .. "and then teleport back to X. "
        .. "This is trivial to do by enabling X "
        .. "(and having previously enabled Y).\n\n"
        .. "However the downside of this is X is added to your "
        .. "list of waypoints. "
        .. "There is a special way to teleport from X to Y and back again "
        .. "without enabling X. "
        .. "You use the X waypoint and select the "
        .. "^x00ff00Temp Waypoint^! option, "
        .. "and then press \"A\" and select waypoint Y to teleport to. "
        .. "This will teleport you to Y, but will also set X as "
        .. "your \"^x00ff00Temporary Waypoint^!\". "
        .. "Then when you want to teleport back, use the Y waypoint "
        .. "(or any other waypoint) and "
        .. "select the Temp Waypoint option, then press B. "
        .. "This will teleport you back to X, and it will remove X "
        .. "as your temporary waypoint. "
    return str
end

function p.YW_GATEDCOM_STORE_marker2(chunk_id)
    --Ignoring chunk_id.
    if game_genesis.enabled() then
        return "Remember that you can drop a short marker "
            .. "at any time by pressing M.  This costs 20 gold "
            .. "and the marker will stay in the world for 3 hours.\n\n"
            .. "You can also drop a marker that lasts forever by "
            .. "pressing M for one second.  This costs 50 gold. "
    else
        return "Welcome to this Ying World "
            .. "Gated Community Bazaar!\n\n"
            .. "You can drop a ^x00ff00short-term marker^! "
            .. "at any time (by pressing M) as long as you have "
            .. "10 gold.  You can also buy them ahead of time to use later. "
            .. "^x00ff00You can buy them here^!, "
            .. "at a price of 5 gold per marker. \n\n"
            .. "Short-term markers "
            .. "stay in the world for 3 hours. \n\n"
            .. "^x00ff00You can also drop a permanent marker for 30 gold "
            .. "by holding down M for 1 second.^! "
            .. "There is no way to buy permanent markers ahead of time. "
            .. "You can add text associated to a permanent marker "
            .. "by looking at it and pressing F."
            -- .. "\n\nYou can remove a marker from the world by "
            -- .. "shooting it enough times with your Plasma. "
    end
end
