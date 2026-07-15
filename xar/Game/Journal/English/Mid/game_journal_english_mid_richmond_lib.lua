--File: game_journal_english_mid_richmond_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the ^xff00ffRichmond Library^!.\n\n"
        .. "Go in the ^x00ff00front^! direction to read "
        .. "about Stoney Air and also to enter Stoney Air itself.\n\n"
        .. "Go ^x00ff00left^! to find a map of the Tau Caves. "
        .. "Note that there are monsters to prevent you from "
        .. "getting there. You can also find a map of the "
        .. "Tau Caves in the buildings in Richmond that have a "
        .. "question mark at their top.\n\n"
        .. "Go ^x00ff00right^! to find a place to buy a nuke for 400 gold. "
        .. "Also to the right is a room describing the location of many "
        .. "Homing Rocket upgrades.\n\n"
        .. "Go ^x00ff00up^! to enter the Richmond Arcade."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_WELCOME", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{10}Overview")

    local str = "Lost? An important place to explore is the "
        .. "^xff00ffMain Branch^!. A way to enter the Main Branch "
        .. "is with ^xff00ffStoney Air^! as shown in this picture. "
        .. "You can find Stoney Air in the room directly below this picture, "
        .. "although Stoney Air exists in many places."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{20}If lost, follow the main branch")
    --just add to richmind lib category, not main branch.

    local str = "Once you are in Stoney Air, you want to shrink into "
        .. "one of the Yellow Cubes (see the picture). "
        .. "This requires shrinking several times using the green "
        .. "shrink boxes (also shown in the picture).\n\n"
        .. "When you first enter a Yellow Cube (without shrinking any more) "
        .. "you can look for Stoney Sanctuaries inside the cube. "
        .. "These have a library that tells you more about the Main Branch."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{30}What to do in stoney air")
    --just add to richmind lib category, not main branch.

    local str = "To help in your explorations, you can open the console "
        .. "(by pressing ~), type \"path last\", and then press enter. "
        .. "This will tell you the name of the chunk you are in.\n\n"
        .. "If instead you type \"path\", "
        .. "then this will print the names of all the chunks that "
        .. "that contain you. This is a path from the root of the chunk "
        .. "tree to your current chunk."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_path_command", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{40}The path console command")
    game_journal.add_path("@prog;@prog_path")

    local str = "Some of the Yellow Cubes in Stoney Air have gray corners "
        .. "at their top.  What does this mean?  "
        .. "There is nothing in these gray corners, but a Yellow Cube "
        .. "with such a corner is special."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_SECRET_1_secret_yellow_cubes", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{50}Modified yellow cubes in stoney air")
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_cube;{10}Modified version")

    local str = "In addition to the \"path\" command that you can enter "
        .. "into the console, there is also the \"pathpink\" command.\n\n"
        .. "This is like path except it tells you where pink rings will "
        .. "take you (if you were to use pink rings in your current chunk).\n\n"
        .. "It also tells you the coarsest place blue rings will take you "
        .. "before shrinking again."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_SECRET_1_pathpink_command", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{60}The pathpink console command")
    game_journal.add_path("@prog;@prog_pathpink;{20}Version 2")

    local str = "Some secrets contain even more secrets.\n\n"
        .. "For example, you may know that below the starting island of "
        .. "every Ying World there is a Small White Flower. "
        .. "However just underneath the green block that the flower is on "
        .. "are several health upgrades."
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_YELLOW_CUBE_SECRET_2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_rich;{70}Secondary starting island secret")
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_starting;{30}Small white flower secondary secret")

    local str = "Places to buy nukes:\n\n"
        .. "For 400 gold: Richmond Library\n\n"
        .. "For 300 gold: Williston Cities\n\n"
        .. "For 250 gold: Danville and Colchester Cities\n\n"
        .. "For 200 gold: Essex Cities\n\n"
        .. "For 150 gold: I3 Mahogany Treetops\n\n"
        .. "For 100 gold: Burlington Rooms\n\n"
        .. "For 50 gold: Black Markets";
    game_journal.add_txt(lang, "RICHMOND_LIBRARY_buy_nuke_locations", str)
    game_journal.add_path("@wep;@wep_nuke;{50}Where to buy")
end

-------------------------------------------------------------------------------
