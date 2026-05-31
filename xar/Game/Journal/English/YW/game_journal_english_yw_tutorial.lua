--File: game_journal_english_yw_tutorial.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = --"Here are the controls again.\n\n"
           "Note that pressing F1 while in the game "
        .. "will bring up the \"Xar\" menu. "
        .. "If you then select CONTROLS it will show you "
        .. "the DEFAULT controls.\n\n"
        .. "Note that you can change the "
        .. "controls in MAIN MENU -> OPTIONS -> CONTROLS "
        .. "-> INPUT BINDINGS -> CONTROLS."
    game_journal.add_txt(lang, "TUTORIAL_CONTROLS", str)
    game_journal.add_path("@basic;@basic_controls;{10}Controls Image")
    game_journal.add_path("@basic;@basic_controls;{20}Rebinding keys")

    local str = "You have exactly one \"^x00ff00current respawn point^!\". "
        .. "After you die, you respawn there. \n\n"
        .. "You can also respawn by MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> RESPAWN.\n\n"
        .. "When using a respawn point entity, you can choose to set it as your "
        .. "current respawn point."
    game_journal.add_txt(lang, "TUTORIAL_RESPAWN_part1", str)
    game_journal.add_path("@basic;@basic_respawn;@basic_respawn_player;{10}Your current respawn point")
    game_journal.add_path("@basic;@basic_respawn;@basic_respawn_player;{30}Respawning from package top menu")

    local str = "Note that you can always respawn by going "
        .. "to the package top menu (press F1) and selecting respawn. "
        .. "When you respawn you keep all your upgrades. "
        .. "Normally when you respawn you loose all your health, armor, and ammo. "
        .. "However if you pay a fine you can keep all that. "
        .. "The fine is the lesser of 400 gold and 8% of your total gold."
    game_journal.add_txt(lang, "TUTORIAL_RESPAWN_part2", str)
    game_journal.add_path("@basic;@basic_respawn;@basic_respawn_player;{40}Keeping health/armor/ammo by paying a fine")

    local str = "When you die, you lose all ammo, armor, extra health, and short markers.\n\n"
        .. "You also lose at most 30 gold.\n\n"
        .. "You will, however, keep all upgrades, which is what really matters."
    game_journal.add_txt(lang, "TUTORIAL_RESPAWN_part3", str)
    game_journal.add_path("@basic;@basic_respawn;@basic_respawn_player;{20}What you lose when you die")

    local str = "^x00ff00You can save your game at any time "
        .. "from the Main Menu^! (a \"quick save\").\n\n"
        .. "For convenience, you can also save your game at these "
        .. "red save boxes "
        .. "(look at one and press the F key).\n\n"
        .. "Loading actually brings you ^xff00ffback in time^! to the "
        .. "last time you saved.\n\n"
        .. "When you die, you may want to load instead of respawning.\n\n"
        .. "Try saving here, then fly into the next room, "
        .. "then do\nMAIN MENU -> LOAD GAME."
    game_journal.add_txt(lang, "TUTORIAL_SAVE", str)
    game_journal.add_path("@basic;@basic_save") --Subcategories?

    local str = "If you ever get extremely lost, then when you find "
        .. "a waypoint you can teleport back to your ^xff0000EMERGENCY^! "
        .. "waypoint (which is in the room below here or in a room "
        .. "just like it).\n\n"
        .. "Also, if you ever want to go back to the tutorial, "
        .. "you can teleport to your ^xff0000EMERGENCY^! waypoint "
        .. "and you can brush up on the basics.\n\n"
        .. "If you are eager to get going, you can leave the tutorial "
        .. "up ahead. Just remember to use a waypoint to "
        .. "teleport back here later on to finish the tutorial."
    game_journal.add_txt(lang, "TUTORIAL_WP_ABOVE_part1", str)
    game_journal.add_path("@basic;@basic_waypoint;{10}Emergency waypoint")

    local str = "To use a waypoint, you must first enable it. "
        .. "This can cause the list of enabled waypoints to be quite long. "
        .. "To deal with this, you can \"hide\" waypoints from the list. "
        .. "You can always unhide a waypoint later. \n\n"
        .. "You can also assign a name to each waypoint. "
    game_journal.add_txt(lang, "TUTORIAL_WP_ABOVE_part2", str)
    game_journal.add_path("@basic;@basic_waypoint;{30}Hiding a waypoint from the list")

    local str = "Right clicking the Plasma weapon (secondary fire) shoots 8 shots "
        .. "at once, but each one does only 1/2 the damage "
        .. "as a primary shot. "
        .. "Each weapon has a \"primary\" and a \"secondary\". \n\n"
        .. "Press F3 then the weapon number to read about a weapon. \n\n"
        .. "DPS = \"damage per second\" \n"
        .. "DPA = \"damage per ammo\" "
    game_journal.add_txt(lang, "TUTORIAL_GUNS", str)
    game_journal.add_path("@wep;@wep_gen;{10}Primary vs secondary file, F3, DPS, and DPA") --MOVE!!!

    local str = "This is a picture of an ^x00ff00Overseer^!. \n\n"
        .. "An Overseer is harmless when you are the same size as him, "
        .. "but ^xff0000he is deadly when you are smaller than him^!. \n\n"
        .. "Some monsters behave differently depending on your size.\n\n"
        .. "When you are the same size as this monster, there will be a "
        .. "^xff0000red S^! on your screen to show that you if you shrink, "
        .. "you will need to worry about this monster.\n\n"
        .. "So, before you shrink, deal with all red S's on the screen. "
    game_journal.add_txt(lang, "TUTORIAL_GOBLIN_part1", str)
    game_journal.add_path("@mon;@mon_overseer")
    game_journal.add_path("@area;@area_yw;@area_yw_forest;{20}Beware of overseers")
    game_journal.add_path("@basic;@basic_hud;{40}Red S in attack display")

    local str = "Soon after you leave the tutorial you will encounter "
        .. "^x00ff00Ying Forests^!.\n\n"
        .. "Those forests contain many Goblins. "
        .. "Goblins shoot projectiles at you that are not super fast, "
        .. "so if you keep moving they will not be able to hit you.\n\n"
        .. "On the other hand if you stop moving, then they will be "
        .. "able to hit you and you will be in trouble!"
    game_journal.add_txt(lang, "TUTORIAL_GOBLIN_part2", str)
    game_journal.add_path("@mon;@mon_goblin")
    game_journal.add_path("@area;@area_yw;@area_yw_forest;{10}Beware of goblins")

    local str = "Always remember this: ^xff0000Red rings make you larger^!, "
        .. "and ^x00ff00green ones make you small.^! \n\n"
        .. "^xff00ffPlugs^! are cubes which you can go through only when you are small. \n\n"
        .. "^xff00ffAnti-plugs^! are cubes which you can go through only when you are large. "
    game_journal.add_txt(lang, "TUTORIAL_SHRINK_AND_GROW_part1", str)
    game_journal.add_path("@basic;@basic_green_red;{10}Overview")
    game_journal.add_path("@basic;@basic_green_red;{40}Plugs vs anti-plugs")

    local str = "These ^xff0000red cubes with black dots^! indicate that there are red rings "
        .. "adjacent to them (at a finer level of detail). "
    game_journal.add_txt(lang, "TUTORIAL_SHRINK_AND_GROW_part2", str)
    game_journal.add_path("@basic;@basic_green_red;{30}Red cubes with black dots")

    local str = "Green rings with a ^x808080skull and crossbones^! "
        .. "are functionally identical to green rings. "
        .. "That is, they simply shrink you.\n\n"
        .. "However the skull and crossbones is a warning that "
        .. "once you shrink there, you might not be able to enlarge "
        .. "out very easily (or at all)."
    game_journal.add_txt(lang, "TUTORIAL_SHRINK_AND_GROW_part3", str)
    game_journal.add_path("@basic;@basic_green_red;{20}Green rings with a skull and crossbones")

    local str = "^xff00ffPink Rings^! teleport you to ^xff00ffPink Spheres.^!\n\n"
        .. "This always causes you to become larger.\n\n"
        .. "Experiment in this room. "
    game_journal.add_txt(lang, "TUTORIAL_PINK_RINGS_part1", str)
    game_journal.add_path("@basic;@basic_pink;{10}Overview")

    local str = "^xff0000TECHNICAL:^! To understand how "
        .. "Pink Rings work, you need to know "
        .. "that this world is a tree.  "
        .. "^x00ff00The world is composed of \"chunks\", which are "
        .. "16 x 16 x 16.^!\n\n"
        .. " Every block in a chunk can become a chunk itself "
        .. "(when you are close enough and of the appropriate size).  "
        .. "The chunk that a block turns into is a \"child\" of the chunk "
        .. "that the block was originally from.  "
        .. "Thus, ^x00ff00the chunks in the world form a tree (the \"chunk tree\").^! \n\n"
        .. "When you fly into a ^xff00ffPink Ring^!, you will be teleported "
        .. "up the chunk tree (towards the root) until you reach "
        .. "a chunk with a ^xff00ffPink Sphere^!. "
    game_journal.add_txt(lang, "TUTORIAL_PINK_RINGS_part2", str)
    game_journal.add_path("@basic;@basic_pink;{20}How they work (technical)")

    local str = "The pink cube with a \"P\" in it, which you see "
        .. "above this text box, is the universal symbol that means "
        .. "there are Pink Rings nearby. "
    game_journal.add_txt(lang, "TUTORIAL_PINK_RINGS_part3", str)
    game_journal.add_path("@basic;@basic_pink;{30}Pink cubes with a \"P\" on them")

    local str = "^xff0000TECHNICAL: explanation of how Blue Rings work:^! \n\n"
        .. "Every chunk in the chunk tree is one of 3 types: "
        .. "A blue ^x00ff00UP^!, a blue ^x00ff00DOWN^!, or a blue ^x00ff00TERMINAL^!.\n\n"
        .. "Once you touch a blue ring, you travel:\n\n"
        .. "If you are in a blue ^x00ff00UP^! chunk, you go up one chunk "
        .. "in the chunk tree (towards the root), and the process continues.\n\n"
        .. "If you are in a blue ^x00ff00DOWN^! chunk, you go down one chunk "
        .. "(to a child specified by the current chunk), "
        .. "and the process continues.\n\n"
        .. "This process repeats until you reach a blue ^x00ff00TERMINAL^! chunk, "
        .. "at which point you stop.  "
    game_journal.add_txt(lang, "TUTORIAL_BLUE_RINGS_part1", str)
    game_journal.add_path("@basic;@basic_blue;{10}How they work (technical)")

    local str = "A blue cube with a \"B\" in it "
        .. "is the universal symbol that means "
        .. "there are Blue Rings nearby. "
    game_journal.add_txt(lang, "TUTORIAL_BLUE_RINGS_part2", str)
    game_journal.add_path("@basic;@basic_blue;{20}Blue cubes with a \"B\" on them")

    --A little confusing.
    game_journal.add_txt_cb(lang, "TUTORIAL_MARKERS_AND_OTHER_markers1",
        p.TUTORIAL_MARKERS_AND_OTHER_markers1)
    game_journal.add_path("@basic;@basic_marker;{10}Overview")

    --A little confusing.
    game_journal.add_txt_cb(lang, "TUTORIAL_MARKERS_AND_OTHER_markers2",
        p.TUTORIAL_MARKERS_AND_OTHER_markers2)
    game_journal.add_path("@basic;@basic_marker;{20}Price to drop")
    game_journal.add_path("@basic;@basic_hud;{20}Short markers in inventory")

    local str = "By using a long marker, you can set it as your "
        .. "\"tracking marker\".\n\n"
        .. "You can use your tracking marker to find your "
        .. "way back to a given location."
    game_journal.add_txt(lang, "TUTORIAL_MARKERS_AND_OTHER_tracking_marker", str)
    game_journal.add_path("@basic;@basic_marker;@basic_marker_tracking;{10}Overview")

    local str = "In the default controls, you press F1 "
        .. "bring up the \"Xar menu\". This allows you to "
        .. "respawn, change the game difficulty, etc.\n\n"
        .. "To get to the main menu for the program, "
        .. "press escape.\n\n"
        .. "You can press "
        .. "F2 through F7 to access information about "
        .. "your character. "
    game_journal.add_txt(lang, "TUTORIAL_MARKERS_AND_OTHER_windows", str)
    game_journal.add_path("@basic;@basic_controls;{30}F1 through F7")

    local str = "If you look directly in one of the 6 directions, "
        .. "in the top middle of your screen will be displayed "
        .. "one of the following: UP, DOWN, FRONT, BACK, LEFT, RIGHT."
    game_journal.add_txt(lang, "TUTORIAL_MARKERS_AND_OTHER_cardinal_dirs", str)
    game_journal.add_path("@basic;@basic_hud;{10}Compass")

    local str = "When a monster drops an item, it will be there for 5 minutes.\n\n"
        .. "When you pick up an item that is part of the world and "
        .. "NOT dropped by a monster, you will not "
        .. "be able to pick it up again for 1 hour.\n\n"
        .. "When you pick up an upgrade, it is gone for good.\n\n"
        .. "When you kill a monster, it will usually not respawn for 1 hour "
        .. "(although this depends on the monster)."
    game_journal.add_txt(lang, "TUTORIAL_KEY_GUARD_item_respawn", str)
    game_journal.add_path("@basic;@basic_respawn;{20}World entity respawn times") --Ok?

    local str = "You get experience points (XP) by killing monsters. \n\n"
        .. "The purpose of XP is to level up. "
        .. "You can monitor how close you are to the next level by the "
        .. "vertical bar on the right hand side of your screen. \n\n"
        .. "You can also press F4 for more info about your XP "
        .. "and leveling up. "
    game_journal.add_txt(lang, "TUTORIAL_LEVEL_UP_part1", str)
    game_journal.add_path("@basic;@basic_xp;{10}Overview")
    game_journal.add_path("@basic;@basic_hud;{30}Vertical XP bar on right of screen")

    local str = "Every time you level up, you get the same set of upgrades:\n\n"
        .. "One ^x00ff00Damage^! upgrade for each of your 10 weapons.\n"
        .. "One ^x00ff00Max Health^! upgrade.\n"
        .. "One ^x00ff00Health Regeneration^! upgrade."
    game_journal.add_txt(lang, "TUTORIAL_LEVEL_UP_part2", str)
    game_journal.add_path("@basic;@basic_xp;{20}Upgrades on leveling up")

    local str = "Every 10th level, in addition to your usual leveling up upgrades you "
        .. "will get bonus upgrades (milestone upgrades).\n\n"
        .. "You can see what these are in the Game's Manual "
        .. "(and the next few milestone upgrades are shown when you press F4).\n\n"
        .. "You claim your milestone upgrades by pressing F4 and hitting enter. "
    game_journal.add_txt(lang, "TUTORIAL_LEVEL_UP_part3", str)
    game_journal.add_path("@basic;@basic_xp;{30}Upgrades on every 10th level up")

    local str = "Picking up items one at a time can be tedious.\n\n"
        .. "You can use \"^x00ff00telekinesis^!\" by pressing T.\n\n"
        .. "This will pick up all items that are close by "
        .. "(and visible).\n\n"
        .. "^xff0000This costs between 5 and 10 gold, depending on "
        .. "the size of the pickup.\n\n"
        .. "That is, if you pick up at least 25 items "
        .. "the cost is automatically 10. "
        .. "If you pick up at least 200 gold "
        .. "the cost is automatically 10.^!"
    game_journal.add_txt(lang, "TUTORIAL_TELEKINESIS", str)
    game_journal.add_path("@basic;@basic_telekinesis;{10}Overview")

    game_journal.add_txt_cb(lang, "TUTORIAL_TROPHIES", p.TUTORIAL_TROPHIES)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_overview")

    local str = "You can change the game difficulty at any time "
        .. "by going to MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> DIFFICULTY.\n\n"
        .. "The easiest difficulty is ^x00ff00TRANQUILITY MODE^! (the bunny).\n\n"
        .. "A harder difficulty is ^x00ff00NORMAL MODE^! (the purple cat). "
        .. "You start the game on normal difficulty.\n\n"
        .. "The next hardest difficulty is ^x00ff00GATEWAY MODE^!.\n\n"
        .. "All difficulties harder than NORMAL MODE "
        .. "require passwords that there are hints for "
        .. "after the final boss."
    game_journal.add_txt(lang, "TUTORIAL_DIFF_1_overview", str)
    game_journal.add_path("@basic;@basic_diff;{20}Tranquility, normal, and gateway mode")

    game_journal.add_txt_cb(lang, "TUTORIAL_DIFF_1_is_this_genesis",
        p.TUTORIAL_DIFF_1_is_this_genesis)
    game_journal.add_path("@basic;@basic_diff;{10}Genesis vs classic mode")

    local str = "In ^x00ff00NORMAL MODE^! (the purple cat), "
        .. "damage to you is multiplied by 35% and "
        .. "damage you deal is multiplied by 200%.\n\n"
    game_journal.add_txt(lang, "TUTORIAL_DIFF_2_normal_mode", str)
    game_journal.add_path("@basic;@basic_diff;{40}Normal mode")

    local str = "^x00ff00TRANQUILITY MODE^! (the bunny) "
        .. "is easier than normal mode.\n\n"
        .. "In tranquility mode, "
        .. "damage to you is multiplied by 12.5% and "
        .. "damage you deal is multiplied by 400%.\n\n"
        .. "^xff00ffAlso, every upgrade you get counts as 2 upgrades.^!\n\n"
        .. "You also get more experience points. "
    game_journal.add_txt(lang, "TUTORIAL_DIFF_2_tranquility_mode", str)
    game_journal.add_path("@basic;@basic_diff;{30}Tranquility mode")

    local str = "^xff0000For speedrunning purposes, we must track "
        .. "the easiest difficulty you switch to use "
        .. "AFTER YOU LEAVE THE TUTORIAL.^!\n\n"
        .. "Once you leave the tutorial, by pressing F5 "
        .. "you can track your current difficulty level and "
        .. "also the easiest difficulty level that you used. "
        .. "Note that this information is also displayed as icons "
        .. "in the lower left hand corner of the screen. "
    game_journal.add_txt(lang, "TUTORIAL_DIFF_2_easiest_used_mode", str)
    game_journal.add_path("@basic;@basic_diff;{50}Tracking difficulty for speedruns")
end

function p.TUTORIAL_MARKERS_AND_OTHER_markers1(chunk_id)
    --Ignoring chunk_id.
    if game_genesis.enabled() then
        return "It is easy to get lost. "
            .. "To make life easier, you can drop a ^x00ff00Marker^!.\n\n"
            .. "This will stay in the world for 3 hours (in gametime), "
            .. "unless you remove it. \n\n"
            .. "The default way to create the Marker is to press M. "
            .. "^xff0000This costs 20 gold.^!\n\n"
            .. "To remove the Marker, simply \"use\" it. "
    else
        return "It is easy to get lost. "
            .. "To make life easier, you can drop a ^x00ff00MARKER^! "
            .. "(which will stay in the world for ^xff00003 hours^!).\n\n"
            .. "The default way to do this is to press M.\n\n"
            .. "You can also drop a marker that ^xff0000lasts forever^! "
            .. "by holding M for 1 second. "
    end
end

function p.TUTORIAL_MARKERS_AND_OTHER_markers2(chunk_id)
    --Ignoring chunk_id.
    if game_genesis.enabled() then
        return "You can also drop a maker that lasts forever "
            .. "by holding down M for one second.\n\n"
            .. "^xff0000This costs 50 gold.^! "
            .. "To remove it, you \"use\" it. "
    else
        return "A normal (short) marker costs 10 gold to drop, "
            .. "unless you have a marker in your inventory "
            .. "(lower right hand corner of screen, "
            .. "^x8000ffpurple square^! with ^xffff00yellow diamond^!).\n\n"
            .. "A long marker always costs 20 gold to drop. "
    end
end

function p.TUTORIAL_TROPHIES(chunk_id)
    --Ignoring chunk_id.
    local str = "Many areas in the game contain ^x00ff00Trophies^!.\n\n"
        .. "There are many types of trophies.\n\n"
        .. "The first time you get "
        .. "a trophy of a given type, you receive "
        .. "^x00ff00200 gold"
    if( not game_genesis.enabled() ) then
        str = str .. " and 4 health upgrades"
    end
    str = str .. "^!.\n\n"
        .. "Each subsequent trophy you get of the same type "
        .. "will only give you 10 gold.\n\n"
        .. "You can see all the trophies you have found "
        .. "by pressing F6. "
    return str
end


function p.TUTORIAL_DIFF_1_is_this_genesis(chunk_id)
    --Ignoring chunk_id.
    if game_genesis.enabled() then
        return "This is the ^x0000ffGenesis^! version of the program. "
            .. "This means that all monsters and weapons have been removed "
            .. "(so it is a pure exploration game).\n\n"
            .. "For a more intense experience, with weapons and monsters, "
            .. "start a new game using the ^x00ff00Classic^! starting configuration."
    else
        return "This is the ^x0000ffClassic^! version of the program. "
            .. "^xff00ffThis the how the game was meant to be played.^! "
            .. "There are weapons and monsters.\n\n"
            .. "If perhaps you do not like "
            .. "fighting monsters at all, you can start a new game "
            .. "using the ^xffff00Genesis^! starting configuration "
            .. "(which has no monsters, and the maps "
            .. "are slightly different). "
    end
end

-------------------------------------------------------------------------------
