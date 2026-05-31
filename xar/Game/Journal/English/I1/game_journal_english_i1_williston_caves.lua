--File: game_journal_english_i1_williston_caves.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I will always remember when we went to the cabin with "
        .. "some friends after graduation. "
        .. "Everyone else wanted to go fishing, but "
        .. "we went into town and played games in the arcade.\n\n"
        .. "Do you remember that one game, Galaxy Brain Catastrophe?\n\n"
        .. "It was a space shooter. "
        .. "Each of us had a gun that was "
        .. "attached to the machine with a cord. "
        .. "I had the Rocket Launcher and you had the Railgun. "
        .. "When it got too intense, we would both turn a key to fire "
        .. "the EMP."
    game_journal.add_txt(lang, "WILLISTON_CAVES_HUGE_TREASURE_CENTER_k_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_cabin_after_grad;{10}Part 1")

    local str = "^x00ff00I was pretty good at those games if I do say so myself, "
        .. "and I was surprised that you matched my ability.\n\n"
        .. "We laughed when we died in the game, and I didn't know "
        .. "what to say when you told me I had pretty eyes.\n\n"
        .. "We thought that summer would be the last time we would see "
        .. "each other, with you planning on moving out west for your "
        .. "secretive job.\n\n"
        .. "You asked if I wanted to join you.\n\n"
        .. "You made a pretty convincing argument, "
        .. "but my heart was drawn to the Inner Mechanization Agency."
    game_journal.add_txt(lang, "WILLISTON_CAVES_HUGE_TREASURE_CENTER_k_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_cabin_after_grad;{20}Part 2")

    p.trophy_locations()

    local str = "Message from Altair to Vega:\n\n"
        .. "^x0000ffI have been thinking about the time "
        .. "we watched the 2013 movie Elysium. "
        .. "You thought that the ChemRail weapon was awesome. "
        .. "We looked in each other's eyes and we both said at the same time: "
        .. "we can build that.\n\n"
        .. "It took some time, but you procured the Inner Cores with "
        .. "Inner Botany Theory and I used Re-Creation Technology on the "
        .. "Inner Cores and we built the thing.\n\n"
        .. "We called it the ^xff00ffRapid Railgun^x0000ff. "
        .. "It has the same Damage Per Ammo as the Classic Railgun, "
        .. "but it has a much higher Damage Per Second.\n\n"
        .. "Should we have built it? "
        .. "That is a separate matter. "
        .. "I hope it will be useful to someone."
    game_journal.add_txt(lang, "WILLISTON_CAVES_WEAPON_MOD", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_wep;{20}Rapid railgun")
end

function p.trophy_locations()
    local str = "^x00ff00Botany Labs^! occur in Blue Bubbles. "
        .. "If you somehow escape the rooms within the Blue Bubbles "
        .. "at a small scale, you will be in the pipe lattice. "
        .. "There you can find a trophy in the question mark blocks."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{20}Blue bubble breach")

    local str = "On the green ^x00ff00surface of Botany Labs^! "
        .. "you can find a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_surface", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{30}Botany lab")

    local str = "Under the ground in a Botany Lab you can "
        .. "find trophies in the ^x00ff00Imp Caves^!."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_imp_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{40}Botany imp caves")

    local str = "Under the ground in a Botany Lab you can "
        .. "find trophies in the ^x00ff00Gnoll Caves^!."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_gnoll_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{50}Botany gnoll caves")

    local str = "Under the ground in a Botany Lab you can "
        .. "find trophies in the ^x00ff00Demon Caves^!."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_demon_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{60}Botany demon caves")

    local str = "Under the ground in a Botany Lab you can "
        .. "find trophies in the ^x00ff00Orc Caves^!."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_orc_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{70}Botany orc caves")

    local str = "Under the ground in a Botany Lab you can "
        .. "find trophies in the ^x00ff00Beholder Caves^!."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_botany_lab_beholder_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{80}Botany beholder caves")

    local str = "If you shrink inside a Botany Lab, "
        .. "you will find a green expanse of growth. "
        .. "On the surface you can find things like Small Cannon Pyramids. "
        .. "You can also find ^x00ff00I1 Libraries^!. "
        .. "These are the libraries for I1 (Group #1) of the Infinity Flower. "
        .. "Inside of each one, there is a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_i1_lib", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{90}I1 library")

    local str = "Inside a Botany Lab you can find many black cubes "
        .. "in the air. If you shrink into such a cube, you can find "
        .. "^x00ff00Lighthouses^!. In the cave system underneath a Lighthouse "
        .. "at the very bottom is a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_lighthouse", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{100}Lighthouse")

    local str = "^x00ff00Infinity Flowers^! can be found in the cave systems "
        .. "inside Botany Labs. "
        .. "Once you enter an Infinity Flower at the top "
        .. "you will see a small gray cube above a larger black cube. "
        .. "The gray cube is the \"base camp\" for the Infinity Flower, "
        .. "and inside this base camp is a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_inf_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{110}Infinity flower")

    local str = "When you enter an Infinity Flower, you should enter the "
        .. "base camp to figure out where to go next. "
        .. "You will find how to shrink into the "
        .. "^x00ff00Williston Cities^! and Williston Fields. "
        .. "At the center of a Williston City, "
        .. "there is a pyramid and at the top there is a room with a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_williston", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{120}Williston city")

    local str = "There is a trophy in the main treasure room of the "
        .. "^x00ff00Williston Caves^!. You are in this treasure room right now."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_williston_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{130}Williston caves")

    local str = "In the Williston Fields that surround Williston Cities, "
        .. "on the ground you can find checkered cubes that are actually "
        .. "^x00ff00Bristol Towns^!. You can enter these towns at their top, "
        .. "pass through 2 layers of maze, and enter the main part of the the town. "
        .. "In the center of such a town is a power with a trophy at the top."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_bristol", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{140}Bristol")

    local str = "In Williston Fields you can also find gray castles which are "
        .. "actually \"^x00ff00EMP Castles^!\". Note: these castles provide an "
        .. "alternate way of entering I2. "
        .. "At the bottom of the central tower, you can find a trophy."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_emp_castle", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{150}EMP castle")

    local str = "Also in Williston Fields you can find purple castles which "
        .. "are actually ^x00ff00Zubeneschamali Castles^!. "
        .. "These are more rare. "
        .. "At the bottom of their central tower is a trophy. "
        .. "These castles are special because they have an (In-Only) waypoint "
        .. "next to a Pink Ring Device."
    game_journal.add_txt(lang, "WILLISTON_CAVES_TROPHY_LIST_zube_castle", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{160}Zubeneschamali castle")
end

-------------------------------------------------------------------------------
