--File: game_journal_english_i2_emp_city.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You can find ^x00ff00EMP Damage^! upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Desert Flowers (in I3)\n\n"
        .. "2) ^xff00ffRed Maze Flowers^!\n\n"
        .. "3) Burlington Cities\n\n"
        .. "4) ^xff00ffOn the surface of moons^!."
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_damage1", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{20}Damage upgrades;{10}Part 1")

    local str = "Here are the ^xff00ffbest^! places to find ^x00ff00EMP Damage^! upgrades:\n\n"
        .. "1) Laboratory Vines (in I2)."
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_damage2", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{20}Damage upgrades;{20}Best places")

    local str = "You can find ^x00ff00EMP Max Ammo^! upgrades in many places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) Huntington Towns\n\n"
        .. "2) ^xff00ffWillison (EMP) Castles^!\n\n"
        .. "3) ^xff00ffEMP Cities^!\n\n"
        .. "4) Desert Flowers (in I3)\n\n"
        .. "5) ^xff00ffRed Maze Flowers^!\n\n"
        .. "6) Green Apples in Apple Trees\n\n"
        .. "7) ^xff00ffOn the surface of moons^!."
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{30}Max ammo upgrades")

    local str = "You can find ^x00ff00EMP Radius^! upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) ^xff00ffBlack Cubes in Mossy Air^!\n\n"
        .. "2) ^xff00ffWillison (EMP) Castles^!\n\n"
        .. "3) Alpha Cubes\n\n"
        .. "4) Green Apples in Apple Trees\n\n"
        .. "5) Catacombs\n\n"
        .. "6) Huntington Towns";
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_radius1", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{40}Radius upgrades;{10}Part 1")

    local str =
           "7) ^xff00ffBlackberries^!\n\n"
        .. "8) Damp, Woody, Earthy, ^xff00ffMoldy^!, and Mahogany Basements\n\n"
        .. "9) ^xff00ffEMP Cities^! (in I2)\n\n"
        .. "10) ^xff00ffI3 Main Forest^! (motherships)\n\n"
        .. "11) ^xff00ffRed Maze Flowers^!\n\n"
        .. "12) Toronto Mazes";
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_radius2", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{40}Radius upgrades;{20}Part 2")

    local str =
           "13) Small Blue Flowers (Tertiary part)\n\n"
        .. "14) Museums (in I3)\n\n"
        .. "15) Desert Flowers (in I3)\n\n"
        .. "16) Grand Lock Boxes (in space)\n\n"
        .. "17) ^xff00ffOn the surface of moons^!."
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_radius3", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{40}Radius upgrades;{30}Part 3")

    local str = "You can find ^x00ff00EMP Freeze Time^! upgrades in several places. "
        .. "Here are some places to find these upgrades:\n\n"
        .. "1) ^xff00ffBlack Cubes in Mossy Air^!\n\n"
        .. "2) Botany Labs\n\n"
        .. "3) ^xff00ffWillison (EMP) Castles^!\n\n"
        .. "4) Green Apples in Apple Trees\n\n"
        .. "5) ^xff00ffBlackberries^!\n\n"
        .. "6) Damp, Woody, Earthy, ^xff00ffMoldy^!, and Mahogany Basements\n\n"
        .. "7) ^xff00ffFanatic Blue Caves^!";  
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_free_time1", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{50}Freeze time upgrades;{10}Part 1")

    local str =
           "8) ^xff00ffEMP Cities^! (in I2)\n\n"
        .. "9) I3 Main Forest\n\n"
        .. "10) ^xff00ffRed Maze Flowers^!\n\n"
        .. "11) Toronto Mazes\n\n"
        .. "12) Museums (in I3)\n\n"
        .. "13) Desert Flowers (in I3)\n\n"
        .. "14) ^xff00ffGrand Lock Boxes^! (in space)\n\n"
        .. "15) ^xff00ffOn the surface of moons^!."; 
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_free_time2", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{50}Freeze time upgrades;{20}Part 2")

    local str = "There are many places to find ^x00ff00EMP ammo^! "
        .. "in the world, however much of the time you will just buy this "
        .. "ammo from stores. Here are some such places to find EMP ammo:\n\n"
        .. "1) Duplication Tubes (in I3)\n\n"
        .. "2) The Bark of Mahogany Trees (the trees in the I3 Main Forest)."
    game_journal.add_txt(lang, "EMP_CITY_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{60}Ammo")
end

-------------------------------------------------------------------------------
