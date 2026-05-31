--File: game_journal_english_i2_fanatic_island.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Fanatic Island^!.\n\n"
        .. "1) Right below this text box is a well with a "
        .. "waypoint at the end.\n\n"
        .. "2) There are occasional Blackberries on the grass.\n\n"
        .. "3) On this island is a tower, which at the top has "
        .. "a library for I2. However it is less dangerous if you "
        .. "find a library randomly as you explore I2.\n\n"
        .. "4) The caves in the ground have Disciples "
        .. "which drop Dark Hole Velocity upgrades. "
    game_journal.add_txt(lang, "FANATIC_ISLAND_WELL_ABOVE_part1", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;{10}Overview;{10}Part 1")

    local str = "5) There are vines hanging from the trees. "
        .. "You can see vines with a \"1\" on them. "
        .. "Within those there are sometimes vines with a \"2\" on them. "
        .. "Etc.  Each number reveals interesting areas. "
        .. "These vines are called ^x00ff00I2 Vine Bundles^!.\n\n"
        .. "6) There are spruce trees on the big trees.\n\n"
        .. "7) There might be a ^x00ff00Willow Tree^! (purple). "
        .. "These often have ^x00ff00Mystic Vines^! hanging from them.\n\n";
    game_journal.add_txt(lang, "FANATIC_ISLAND_WELL_ABOVE_part2", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;{10}Overview;{20}Part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Do you ever wonder why there is so little information about "
        .. "you in this world? It is all about me me me.\n\n"
        .. "Maybe that is because this fractal block world "
        .. "exists in my mind, but you exist outside my mind.\n\n"
        .. "The thought that you exist outside my mind is kind of "
        .. "romantic.\n\n"
        .. "Although perhaps I have lost touch with what is romantic. ";
    game_journal.add_txt(lang, "FANATIC_ISLAND_WELL_TREASURE_k", str)
    game_journal.add_path("@lore;@lore_phil;{30}Why is there so little information about you?")

    local str = "You are on the inside of a ^x00ff00Willow Tree^!\n\n"
        .. "You can probably find a (purple) Mystic Vine hanging from this tree.\n\n"
        .. "To interact with this area, you must leave the tree, "
        .. "shrink, then come back here.\n\n"
        .. "Having trouble coming back here at a smaller size? "
        .. "Use your EMP weapon once it is strong enough."
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_CENTER_part1", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_willow;{10}Overview")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffStill having trouble coming back here at a smaller size? "
        .. "You don't feel like upgrading your EMP weapon for hours?\n\n"
        .. "Two words: ^xff00ffTracking Marker^!^x0000ff.\n\n"
        .. "That is, go to the bottom of this tree trunk "
        .. "then place a long marker at the bottom. "
        .. "Use the marker and select it as your tracking marker.\n\n"
        .. "Then go outside the boundary of the Willow Tree, "
        .. "shrink, and go into the underground cave system. "
        .. "Follow your tracking marker to eventually come out "
        .. "from underneath the ground, right next to your tracking marker.\n\n"
        .. "Haha! Ha ha ha! "
        .. "I love secrets, shortcuts, tricks, and of course, "
        .. "^xff0000traps^x0000ff ^_^."
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_CENTER_part2", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_willow;{20}How to enter using a tracking marker;{10}Version 1")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "One member of my very large scale maze solving team "
        .. "was ^xff00ffJane^x00ff00. She was very smart. "
        .. "She had a photographic memory.\n\n"
        .. "She would first look at all the mazes carefully. "
        .. "Then, she would take out her knitting needles and start creating "
        .. "a scarf or hat or whatever. "
        .. "She would just knit and knit, not looking at anything. "
        .. "I guess that was her way of processing information. "
        .. "Within a few days, she would submit her report of the "
        .. "maze solution.\n\n"
        .. "I noticed that some of the stitches she made were strange. "
        .. "It was almost as if they were mistakes, however instead I think "
        .. "the stitches were some kind of way of calculating, "
        .. "like an abacus."
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_CENTER_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_knitting;{10}Part 1")

    local str = "^x00ff00I remember once we were assigned a quite large maze to solve "
        .. "and this did something to Jane. "
        .. "She started knitting a purple scarf, but she never stopped.\n\n"
        .. "Days passed, and then a week.  And then two weeks. "
        .. "She barely ate and rarely spoke. "
        .. "I wonder if she constructed an Inner Core in her mind that "
        .. "was just too much for her to handle."
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_CENTER_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_knitting;{20}Part 2")

    local str = "^x00ff00A couple months later, I visited Jane at her house. "
        .. "Her parents were taking care of her. "
        .. "When I got there, I was disturbed to see how long the scarf was. "
        .. "I looked at the strange stitches, as if I could somehow decode "
        .. "them to get a clue as to the true nature "
        .. "of the Inner Mechanization Agency."
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_CENTER_TREASURE_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;{10}Jane's knitting;{30}Part 3")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffPlace a long marker ^xff00ffhere^x0000ff. "
        .. "Use the marker and select it as your tracking marker.\n\n"
        .. "Then go outside the boundary of the Willow Tree, "
        .. "shrink, and go into the underground cave system. "
        .. "Follow your tracking marker to eventually come out "
        .. "from underneath the ground, right next to your tracking marker.\n\n"
        .. "Haha! Ha ha ha! "
        .. "I love secrets, shortcuts, tricks, and of course, "
        .. "^xff0000traps^x0000ff ^_^.";
    game_journal.add_txt(lang, "FANATIC_ISLAND_WILLOW_BOTTOM", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_willow;{20}How to enter using a tracking marker;{20}Version 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "The piece of paper with the yin yang symbol that I stole "
        .. "from work was hidden in my apartment. "
        .. "The first time I tried it at home, I took the paper "
        .. "out and willed myself to be transported "
        .. "to the hidden world of Xar. "
        .. "Like a charm, it worked.\n\n"
        .. "My apartment was filled up with plants "
        .. "(some people would say too many plants). "
        .. "My mind shrunk into a plant, explored that, shrunk into "
        .. "a plant inside that plant, grew, etc.\n\n"
        .. "\"What is this called?\" I said out loud.\n\n"
        .. "I was looking at a plant at the time and it answered me:\n\n"
        .. "The plant telepathically told me\n\n"
        .. "^xff00ffthis is called Inner Botany Theory^!. ";
    game_journal.add_txt(lang, "FANATIC_ISLAND_DARK_WILLOW_TREASURE_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;{10}Exploring my plants in the inner world;{10}Part 1")

    local str = "^x00ff00For what it is worth, while I was shrinking and growing, "
        .. "the room felt like it was more than 3 dimensional. "
        .. "I am not sure how to explain this, but one idea is there "
        .. "are 4 degrees of freedom:\n\n"
        .. "1) front/back,\n"
        .. "2) left/right,\n"
        .. "3) up/down,\n"
        .. "4) grow/shrink.\n";
    game_journal.add_txt(lang, "FANATIC_ISLAND_DARK_WILLOW_TREASURE_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_apt;{10}Exploring my plants in the inner world;{20}Part 2")
end

-------------------------------------------------------------------------------
