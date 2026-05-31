--File: game_journal_english_i3_cellar_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a library that talks about "
        .. "all the ^x00ff00Cellars^! "
        .. "in the universe.\n\n"
        .. "At the bottom there is a Basement Library."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_ABOVE", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{10}Overview")

    ---------------------------------------------

    local str = "This is a ^x00ff00Mossy Cellar^!.\n\n"
        .. "It has the standard cellar layout.\n\n"
        .. "The main treasure is\n"
        .. p.mossy()
        .. "\n\nNote that another way to get "
        .. "Railgun Fire Rate upgrades is in the Base "
        .. "Camps of Infinity Flowers, "
        .. "or the maze entrances of Montreal cities.\n\n"
        .. "Also note: it is wise to freeze ^x0000ffSliver^! monsters "
        .. "with your Laser. It takes too long to kill them."
    game_journal.add_txt(lang, "MOSSY_AIR_CELLAR_ABOVE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_base;{20}Mossy cellar")

    local str = "A ^x00ff00Mossy Cellar^! "
        .. "has the following treasure:\n\n"
        .. p.mossy()
    game_journal.add_txt(lang, "CELLAR_LIBRARY_MIDWAY_MOSSY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{20}Midway;{10}Mossy;{10}Overview")

    local str = "In the treasure room of a Mossy Cellar "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Rail Tower^!\n"
        .. "2) ^x00ff00Richmond Town^!."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_MIDWAY_MOSSY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{20}Midway;{10}Mossy;{20}Secondary areas")

    local str = "Mossy Cellar can be found on the top of islands of Mossy Islands "
        .. "(in Mossy Air).\n\n"
        .. "You can also find them on the perimeter "
        .. "of Stoney Sanctuaries (in Mossy Air)."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_MIDWAY_MOSSY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{20}Midway;{10}Mossy;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Woody Cellar^!.\n\n"
        .. "It has the standard cellar layout.\n\n"
        .. "The main treasure is\n"
        .. p.woody()
    game_journal.add_txt(lang, "FANATIC_ISLAND_WOODY_CELLAR_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{20}Woody cellar")

    local str = "A ^x00ff00Woody Cellar^! "
        .. "has the following treasure:\n\n"
        .. p.woody()
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_WOODY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{10}Woody;{10}Overview")

    local str = "In the treasure room of a Woody Cellar "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Catacombs^!\n"
        .. "2) ^x00ff00Small Black Flower^!."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_WOODY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{10}Woody;{20}Secondary areas")

    local str = "Woody Cellars can be found in the caves "
        .. "under the ground of the 3x3 islands of Fanatic Air (in I2). "
        .. "Note: these cellars are a bit rare."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_WOODY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{10}Woody;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Earthy Cellar^!.\n\n"
        .. "It has the standard cellar layout.\n\n"
        .. "The main treasure is\n"
        .. p.earthy()
    game_journal.add_txt(lang, "MINI_AMMO_FOREST_EARTHY_CELLAR_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{40}Earthy cellar")

    local str = "An ^x00ff00Earthy Cellar^! "
        .. "has the following treasure:\n\n"
        .. p.earthy()
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_EARTHY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{20}Earthy;{10}Overview")

    local str = "In the treasure room of an Earthy Cellar "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Catacombs^!\n"
        .. "2) ^x00ff00Small Black Flower^!."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_EARTHY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{20}Earthy;{20}Secondary areas")

    local str = "Earthy Cellars can be found in Bubble Caves, "
        .. "which are in the Minigun Forest."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_EARTHY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{20}Earthy;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Damp Cellar^!.\n\n"
        .. "It has the standard cellar layout.\n\n"
        .. "The main treasure is\n"
        .. p.damp()
    game_journal.add_txt(lang, "FANATIC_BLUE_DAMP_CELLAR_ABOVE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_base;{60}Damp cellar")

    local str = "A ^x00ff00Damp Cellar^! "
        .. "has the following treasure:\n\n"
        .. p.damp()
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_DAMP_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{30}Damp;{10}Overview")

    local str = "In the treasure room of a Damp Cellar "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Catacombs^!\n"
        .. "2) ^x00ff00Small Black Flower^!."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_DAMP_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{30}Damp;{20}Secondary areas")

    local str = "Damp Cellars can be found in the "
        .. "caves within the blue insides "
        .. "of Fanatic Weeds in I2.\n\n"
        .. "These can also be found in the Tertiary "
        .. "and Quaternary blue caves of Small Blue Flowers."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I2_DAMP_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{30}I2;{30}Damp;{30}Where to find")

    ---------------------------------------------

    local str = "This is a ^x00ff00Mahogany Cellar^!.\n\n"
        .. "It has the standard cellar layout.\n\n"
        .. "The main treasure is\n"
        .. p.mahogany()
    game_journal.add_txt(lang, "MAHOGANY_CELLAR_ABOVE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_base;{20}Mahogany cellar")

    local str = "A ^x00ff00Mahogany Cellar^! "
        .. "has the following treasure:\n\n"
        .. p.mahogany()
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I3_MAHOGANY_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{40}I3;{40}Mahogany;{10}Overview")

    local str = "In the treasure room of a Mahogany Cellar "
        .. "you can find the following (randomly):\n\n"
        .. "1) ^x00ff00Alpha Cube^!\n"
        .. "2) ^xff00ffI2 WIG Flower^!."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I3_MAHOGANY_secondary", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{40}I3;{40}Mahogany;{20}Secondary areas")

    local str = "Mahogany Cellars can be found "
        .. "in the hollow inside of Mahogany trees "
        .. "(after getting through the bark)."
    game_journal.add_txt(lang, "CELLAR_LIBRARY_I3_MAHOGANY_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_cellar;{40}I3;{40}Mahogany;{30}Where to find")
end

function p.mossy()
    return "1) 2 Cannon Fire Rate upgrades\n"
        .. "2) 1 Railgun Fire Rate upgrade\n"
        .. "3) ^xff00ff1 Laser Freeze Time^! upgrade\n"
        .. "4) 1 Rocket Radius upgrade\n"
        .. "5) EMP Radius + Freeze Time upgrade\n"
        .. "6) 200 gold."
end

function p.woody()
    return "1) 1 Plasma Velocity upgrade\n"
        .. "2) 6 Max Health Upgrades\n"
        .. "3) 3 Railgun Damage upgrades\n"
        .. "4) 2 Railgun Max Ammo upgrade\n"
        .. "5) 2 Railgun Fire Rate upgrade\n"
        .. "6) 1 EMP Radius upgrade\n"
        .. "7) 1 EMP Freeze Time upgrade.\n\n"
        .. "^xff0000Danger: There are 4 #4 Pool Balls inside. "
        .. "They cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.earthy()
    return "1) 4 Plasma Velocity upgrades\n"
        .. "2) ^x00ff002 Minigun Max Ammo upgrade^!\n"
        .. "3) ^x00ff004 Minigun Fire Rate upgrades^!\n"
        .. "4) EMP Radius + Freeze Time upgrade\n"
        .. "5) 7 Health upgrades\n"
        .. "6) 200 gold.\n\n"
        .. "Hint: Use your Chaining Cannon Ball.\n\n"
        .. "^xff0000Danger: There are #2, #3, #4, and #5 Pool Balls inside "
        .. "that cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.damp()
    return "1) EMP Radius + Freeze Time upgrade\n"
        .. "2) Rocket Radius + Velocity upgrade\n"
        .. "3) 6 Max Health upgrades\n"
        .. "4) ^xff00ff1200 gold^!.\n\n"
        .. "^xff0000Danger: There are 4 #4 Pool Balls inside. "
        .. "They cannot be killed, cannot be Laser stunned, "
        .. "can only be EMP stunned for 2 seconds, "
        .. "will follow you around corners, and will kill you instantly "
        .. "when they are close enough! "
        .. "These horrible balls escaped from ^x00ff00Ken's Labyrinth^xff0000."
end

function p.mahogany()
    return "1) 1 EMP Radius upgrade\n"
        .. "2) 1 EMP Freeze Time upgrade\n"
        .. "3) 2 Nuke Radius upgrades\n"
        .. "4) 2 Nuke Max Ammo upgrades\n"
        .. "5) 2 Nuke Velocity upgrades\n"
        .. "6) 4 Nuke Damage upgrades\n"
        .. "7) 600 gold.\n\n"
        .. "You should use your EMP and beware of #4 Pool Balls!\n\n"
        .. "^xff00ffAlso in the treasure room you can unlock "
        .. "your High Velocity Rockets.^!"
end

-------------------------------------------------------------------------------
