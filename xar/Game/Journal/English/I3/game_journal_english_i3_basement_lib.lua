--File: game_journal_english_i3_basement_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a library that talks about "
        .. "all the ^x00ff00Basements^! "
        .. "in the universe.\n\n"
        .. "At the bottom there are libraries for "
        .. "areas similar to Basements."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_ABOVE", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{10}Overview")

    ---------------------------------------------

    local str = "This is a ^x00ff00Mossy Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.mossy()
    game_journal.add_txt(lang, "MOSSY_AIR_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_base;{10}Mossy basement")

    local str = "A ^x00ff00Mossy Basement^! "
        .. "has the following treasure:\n\n"
        .. p.mossy()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_MIDWAY_MOSSY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{20}Midway;{10}Mossy;{10}Overview")

    local str = "In the treasure room of a Mossy Basement "
        .. "is a ^x00ff00Health Tower^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_MIDWAY_MOSSY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{20}Midway;{10}Mossy;{20}Secondary areas")

    local str = "Mossy Basements can be found in the caves of Mossy Islands "
        .. "(in Mossy Air). "
        .. "They can also be found at the center of Black Cubes in Mossy Air."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_MIDWAY_MOSSY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{20}Midway;{10}Mossy;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Woody Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.woody()
    game_journal.add_txt(lang, "FANATIC_ISLAND_WOODY_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{10}Woody basement")

    local str = "A ^x00ff00Woody Basement^! "
        .. "has the following treasure:\n\n"
        .. p.woody()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_WOODY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{10}Woody;{10}Overview")

    local str = "In the treasure room of a Woody Basement "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Small White Flower^!\n"
        .. "2) ^x00ff00Small Black Flower^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_WOODY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{10}Woody;{20}Secondary areas")

    local str = "Woody Basements can be found on the trees growing "
        .. "on the 3x3 islands of Fanatic Air (in I2). "
        .. "This air exists all over the place in I2. "
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_WOODY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{10}Woody;{30}Where to find")

    ---------------------------------------------

    local str = "This is an ^x00ff00Earthy Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.earthy()
    game_journal.add_txt(lang, "MINI_AMMO_FOREST_EARTHY_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{30}Earthy basement")

    local str = "An ^x00ff00Earthy Basement^! "
        .. "has the following treasure:\n\n"
        .. p.earthy()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_EARTHY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{20}Earthy;{10}Overview")

    local str = "In the treasure room of a Earthy Basement "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Cardboard Box^!\n"
        .. "2) ^x00ff00Steel Box^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_EARTHY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{20}Earthy;{20}Secondary areas")

    local str = "Earthy Basements can be found on the trees "
        .. "in the I2 Minigun Ammo Forest. "
        .. "That is, consider the green Laboratory Vines "
        .. "that hang from Fanatic Weeds. "
        .. "On the sides of these vines there are outgrowths. "
        .. "If you shrink enough on these outgrowths, "
        .. "you can find these Earthy Basements.\n\n"
        .. "You can also find Earthy Basements in "
        .. "^x00ff00Rivers^! in I3."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_EARTHY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{20}Earthy;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Damp Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.damp()
    game_journal.add_txt(lang, "FANATIC_BLUE_DAMP_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{50}Damp basement")

    local str = "A ^x00ff00Damp Basement^! "
        .. "has the following treasure:\n\n"
        .. p.damp()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_DAMP_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{30}Damp;{10}Overview")

    local str = "In the treasure room of a Damp Basement "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Cardboard Box^!\n"
        .. "2) ^x00ff00Steel Box^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_DAMP_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{30}Damp;{20}Secondary areas")

    local str = "Damp Basements can be found in the "
        .. "blue insides of Fanatic Weeds in I2.\n\n"
        .. "These can also be found in the Primary "
        .. "and Secondary blue caves of Small Blue Flowers."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_DAMP_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{30}Damp;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Moldy Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.moldy()
    game_journal.add_txt(lang, "BLUE_MUSHROOM_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{70}Moldy basement")

    local str = "A ^x00ff00Moldy Basement^! "
        .. "has the following treasure:\n\n"
        .. p.moldy()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_MOLDY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{40}Moldy;{10}Overview")

    local str = "In the treasure room of a Moldy Basement "
        .. "is a ^x00ff00Colchester^! Town."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_MOLDY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{40}Moldy;{20}Secondary areas")

    local str = "Moldy Basements can be found on the caves "
        .. "that are in the core of a Blue Mushroom."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I2_MOLDY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{30}I2;{40}Moldy;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Mahogany Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.mahogany()
    game_journal.add_txt(lang, "MAHOGANY_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_base;{10}Mahogany basement")

    local str = "A ^x00ff00Mahogany Basement^! "
        .. "has the following treasure:\n\n"
        .. p.mahogany()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_MAHOGANY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{10}Mahogany;{10}Overview")

    local str = "In the treasure room of a Mahogany Basement "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Small White Flower^!\n"
        .. "2) ^xff00ffI2 WIG Flower^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_MAHOGANY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{10}Mahogany;{20}Secondary areas")

    local str = "Mahogany Basements can be found inside the "
        .. "trunks of trees (Mahogany Trees) in the "
        .. "I3 Main Forest."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_MAHOGANY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{10}Mahogany;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Root Vegetable Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.root_veg()
    game_journal.add_txt(lang, "TURNIP_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_base;{30}Root vegetable basement")

    local str = "A ^x00ff00Root Vegetable Basement^! "
        .. "has the following treasure:\n\n"
        .. p.root_veg()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_ROOT_VEG_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{20}Root vegetable;{10}Overview")

    local str = "In the treasure room of a Root Vegetable Basement "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Jackfruit^!\n"
        .. "2) ^xff00ffBlack Mushroom^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_ROOT_VEG_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{20}Root vegetable;{20}Secondary areas")

    local str = "Root Vegetable Basements can be found inside the "
        .. "caves under the ground where Turnips grow (in I3). "
        .. "Deeper root vegetable contain more of these basements."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_I3_ROOT_VEG_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{40}I3;{20}Root vegetable;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Quicksand Grass Basement^!.\n\n"
        .. "It has the standard basement layout.\n\n"
        .. "The main treasure is\n"
        .. p.quicksand()
    game_journal.add_txt(lang, "QUICKSAND_GRASS_BASEMENT_ABOVE", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_base;{10}Quicksand grass basement")

    local str = "A ^x00ff00Quicksand Basement^! "
        .. "has the following treasure:\n\n"
        .. p.quicksand()
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_NWP_QUICKSAND_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{50}No waypoint (NWP);{10}Quicksand;{10}Overview")

    local str = "^xff0000There is no additional area inside "
        .. "a Quicksand Basement.^!"
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_NWP_QUICKSAND_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{50}No waypoint (NWP);{10}Quicksand;{20}Secondary areas")
    
    local str = "Quicksand Basements can be found inside "
        .. "^x00ff00Quicksand Grass^!. "
        .. "Once you shrink into this grass, "
        .. "^xff0000there is no escape^!."
    game_journal.add_txt(lang, "BASEMENT_LIBRARY_NWP_QUICKSAND_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_basement;{50}No waypoint (NWP);{10}Quicksand;{30}Where to find")
end

function p.mossy()
    return "1) 1 EMP Radius or Freeze Time upgrade\n"
        .. "2) 1 Homing Rocket Velocity upgrade\n"
        .. "3) 1 Homing Rocket Damage upgrade\n"
        .. "4) 1 Rocket Radius upgrade\n"
        .. "5) 1 Cannon Velocity upgrade\n"
        .. "6) 100 gold."
end

function p.woody()
    return "1) 1 Plasma Velocity upgrade\n"
        .. "2) ^xffff002 Railgun Damage upgrades^!\n"
        .. "3) ^x00ff002 Railgun Fire Rate upgrades^!\n"
        .. "4) EMP Radius + Freeze Time upgrade.\n\n"
        .. "Hint: Use your Laser to freeze ^x0000ffSlivers^! "
        .. "(they take too long to kill).\n\n"
        .. "^xff0000Danger: There are 2 #3 Pool Balls inside. "
        .. "They cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.earthy()
    return "1) 1 Plasma Velocity upgrade\n"
        .. "2) ^x00ff003 Minigun Damage upgrades^!\n"
        .. "3) ^x00ff001 Minigun Max Ammo upgrades^!\n"
        .. "4) ^x00ff002 Minigun Fire Rate upgrades^!\n"
        .. "5) EMP Radius + Freeze Time upgrade\n"
        .. "6) 100 gold.\n\n"
        .. "Hint: Use your Chaining Cannon Ball.\n\n"
        .. "^xff0000Danger: There is a #3 Pool Ball near the bottom which "
        .. "cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.damp()
    return "1) 1 Cannon Fire Rate upgrade\n"
        .. "2) EMP Radius + Freeze Time upgrade\n"
        .. "3) Rocket Radius + Velocity upgrade\n"
        .. "4) ^xff00ff800 gold^!.\n\n"
        .. "^xff0000Danger: There are 5 #3 Pool Balls inside. "
        .. "They cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.moldy()
    return "1) ^xff00ff4 EMP Radius upgrades^!\n"
        .. "2) 1 EMP Freeze Time upgrade\n"
        .. "3) 200 gold.\n\n"
        .. "There is also a ^x00ff00Colchester^! Town at the end.\n\n"
        .. "Hint: You must use your EMP.\n\n"
        .. "Hint: Use your Vampire Railgun to steal health "
        .. "from ^xff0000Lampreys^!, which are too hard to kill and "
        .. "cannot be stunned."
end

function p.mahogany()
    return "1) 1 EMP Radius upgrade\n"
        .. "2) 2 EMP Freeze Time upgrades\n"
        .. "3) ^x00ff001 Nuke Radius upgrade^!\n"
        .. "4) 4 Nuke Velocity upgrades\n"
        .. "5) 6 Nuke Damage upgrades\n"
        .. "6) 400 gold.\n\n"
        .. "Hint: you should use your EMP.\n\n"
        .. "^xff0000Danger: There are 5 #3 Pool Balls inside. "
        .. "They cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.root_veg()
    return "1) EMP: 1 Radius, 3 Freeze Time, 3 Damage upgrades\n"
        .. "2) Cannon: 7 Fire Rate, 1 Velocity upgrade\n"
        .. "3) Rocket: 2 Radius upgrades\n"
        .. "4) Minigun: 1 Fire Rate, ^xffff002 Velocity^! upgrades\n"
        .. "5) Plasma: 7 Velocity upgrades.\n"
        .. "6) 500 gold.\n\n"
        .. "50% of the time there is a ^x888888Black Mushroom^! at the bottom "
        .. "(in which case there is no waypoint).\n\n"
        .. "Hint: Use your Laser to freeze ^x0000ffSlivers^!. "
        .. "You should use your EMP. "
        .. "There are 5 #4 Pool Balls inside."
end

function p.quicksand()
    return "1) ^xff00ff1 Laser Max Ammo upgrade^!\n"
        .. "2) 1 Laser Freeze Time upgrade\n"
        .. "3) 1 EMP Radius upgrade\n"
        .. "4) 2 EMP Freeze Time upgrades\n"
        .. "5) 30 nukes.\n\n"
        .. "Hint: Use your EMP and many nukes "
        .. "(assuming a nuke can kill a ^xff0000Lamprey^! with one shot)."
end

-------------------------------------------------------------------------------
