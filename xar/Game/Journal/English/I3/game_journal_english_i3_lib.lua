--File: game_journal_english_i3_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    --This is only shown if the "one_way" mutator is being used.
    local str = "There are several ways in and out of I3 "
        .. "that involve passing by a ^xffffffWhite Box Device^!.\n\n"
        .. "For example, entering or exiting a Colchester town.\n\n"
        .. "Another example is you can go to the "
        .. "top floor of ^x00ff00THIS library^!, "
        .. "pass by a White Box Device, and then enter the I2 Library "
        .. "(which has a waypoint).\n\n"
        .. "We will not talk about these "
        .. "\"white box entrance/exit\" methods here."
    game_journal.add_txt(lang, "I3_LIBRARY_INOUT_0_white_box", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{10}Ways in / out of I3;{10}Passing by a white box device")

    ---------------------------------------------

    local str = "^xff0000This is what the entrance to Hell looks like.\n\n"
        .. "Beneath the surface of hell grows Hell Flowers, which house "
        .. "Inner Cores. These Inner Cores guard Keys to the Universe.\n\n"
        .. "You can find these entrances to hell in the Main Forest of I3. "
        .. "They look like large structures (they are K-chunks)."
    game_journal.add_txt(lang, "I3_LIBRARY_HELL_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{10}What an entrance to hell looks like")

    local str = "^xff00ffYou can also find an entrance to Hell on the side of this "
        .. "library (next to a Pink Sphere). To get there, you must somehow find "
        .. "Pink Rings within this library.\n\n"
        .. "However, you need to be a skilled Inner Botanist to find such Pink Rings."
    game_journal.add_txt(lang, "I3_LIBRARY_HELL_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{20}There is an entrance to hell in this library")

    ---------------------------------------------

    local str = "Message from Proxima Centauri:\n\n"
        .. "^x0000ffConsider the combination of an Inner Core and the Key to the Universe which it guards. "
        .. "Some people consider this a weapon, like some kind of mega bomb. "
        .. "But in my opinion that is a distortion of the concept. "
        .. "It is only a weapon in the sense that something powerful can be harmful "
        .. "if it is in the wrong hands.\n\n"
        .. "My theory is this: an Inner Core / Key is a \"force of creation\", "
        .. "and by using it, so many wonderful and scary and exciting and beautiful things can be created. "
        .. "And I believe that what we see in this Fractal Block World ultimately "
        .. "can all be created from this creationary core.\n\n"
        .. "That is, I believe one of these cores is sufficient to create this universe."
    game_journal.add_txt(lang, "I3_LIBRARY_INNER_CORE_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{30}Inner core;{10}Part 1")

    local str = "^x0000ffBut there is another direction: "
        .. "the belief that these cores are NECESSARY for universes like this to exist.\n\n"
        .. "Inner Botanists like myself have explored other universes, "
        .. "and ultimately we always find, deep inside, "
        .. "a core with sufficient creationary powers to create the universe it is in. "
        .. "The fact that without fail we have found these cores "
        .. "in all universes we know about leads us to "
        .. "believe that they are necessary for creation.\n\n"
        .. "Most people have never seen these cores with their own eyes, "
        .. "and so they believe them to be a fiction. "
        .. "Or even worse, they believe them to be inconsistent. "
        .. "But our discovery of these cores in so many universes justifies "
        .. "the consistency of such cores. But of course I am trusting my "
        .. "trust network that tells me that these universes exist."
    game_journal.add_txt(lang, "I3_LIBRARY_INNER_CORE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{30}Inner core;{20}Part 2")

    local str = "^x0000ffAnother mystery is how any two cores from different universes "
        .. "appear to be comparable to one another, "
        .. "even if there are deep inconsistencies "
        .. "between the higher level features of the two universes."
    game_journal.add_txt(lang, "I3_LIBRARY_INNER_CORE_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{30}Inner core;{30}Part 3")

    local str = "Many people report to being awestruck when seeing an Inner Core "
        .. "for the first time.  The clockwork is so masterful to behold that "
        .. "people are halted in their tracks.\n\n"
        .. "We have been unable to take a picture of these things. "
        .. "However from the descriptions that have been reported, "
        .. "it has gears in the three primary colors."
    game_journal.add_txt(lang, "I3_LIBRARY_INNER_CORE_part4", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{20}Hell;{30}Inner core;{40}Part 4")

    ---------------------------------------------

    local str = "Message from KY Cygni:\n\n"
        .. "^x0000ffA peculiar flower native to I3 is the ^x00ff00Large White Flower^!^x0000ff. "
        .. "It is in the same family as the Small White Flower because it contains "
        .. "significant health upgrades. \n\n"
        .. "However, we have certified that Small White Flowers contain no waypoints. "
        .. "We make no such promise for Large White Flowers."
    game_journal.add_txt(lang, "I3_LIBRARY_LARGE_WHITE_FLOWER_lore1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{10}Large white flower;{10}Part 1")

    local str = "^x0000ffIn fact, our sensors have detected a spike of complexity "
        .. "somewhat beyond their treasure rooms.\n\n"
        .. "We received reports that inside these Large White Flowers are great sprawling cities.\n\n"
        .. "It will be a long time before we can thoroughly explore this area.\n\n"
        .. "Although we continue to push the boundary of our knowledge, there is still "
        .. "so much about the Infinity Flower that we do not understand."
    game_journal.add_txt(lang, "I3_LIBRARY_LARGE_WHITE_FLOWER_lore2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{10}Large white flower;{20}Part 2")

    local str = "You can find ^x00ff00Large White Flowers^! growing on the branches "
        .. "of the trees in the Main Forest of I3."
    game_journal.add_txt(lang, "I3_LIBRARY_LARGE_WHITE_FLOWER_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{10}Large white flower;{30}Part 3")

    ---------------------------------------------

    game_journal.add_txt_cb(lang, "I3_LIBRARY_DESERT", p.I3_LIBRARY_DESERT)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{50}Desert;{10}Overview")
    --There probably should be a category called "main forest" which talks about mahagony trees, etc.

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Come on K, try to remember...\n\n"
        .. "How did I become trapped in Xar?\n\n"
        .. "We were solving a very complex maze at work. "
        .. "The maze was broken into pieces. Teams were "
        .. "working on the various pieces, and for this project "
        .. "communication between the teams was not allowed.\n\n"
        .. "But using clever means "
        .. "I was able to obtain the schematics for all parts "
        .. "of the maze (against the knowledge of the agency).\n\n"
        .. "For weeks my mind would enter the Xar world "
        .. "while I worked on the maze. "
        .. "My senses were becoming more and more elevated. "
        .. "I was not even looking at the maze, "
        .. "I was staring at the ceiling.^!"
    game_journal.add_txt(lang, "I3_LIBRARY_K_2_part_1", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_crit;{10}Part 1")

    local str = "^x00ff00My mental visualization felt like "
        .. "my mind was a massive supercomputer, "
        .. "powered by a Dyson swarm surrounding the sun, "
        .. "brute force searching for pathways. "
        .. "My senses were becoming very sensitive, "
        .. "and all of a sudden in my mind I saw a bright flash "
        .. "of light.\n\n"
        .. "\"I GOT IT\" I shouted!\n\n"
        .. "At the instance I finished construction of the "
        .. "Inner Core in my mind, I felt no longer human. "
        .. "I felt like a god.\n\n"
        .. "^xff0000EEEEEEHHHH...  EEEEEEHHHH.... ^x00ff00"
        .. "The fire alarm went off. "
        .. "This was not a coincidence.\n\n"
        .. "I would not be able to transfer the Inner Core to my "
        .. "Re-Creation contact, I would have to leave the building with it. "
        .. "With my hands shaking, I grabbed one of my pairs of "
        .. "sunglasses and put them on."
    game_journal.add_txt(lang, "I3_LIBRARY_K_2_part_2", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_crit;{20}Part 2")

    local str = "^x00ff00I walked out of the building "
        .. "(without using a retinal scanner). "
        .. "Outside I was looking for my Re-Creation contact, "
        .. "being careful not to look in anyone's eyes. "
        .. "I did not see her.\n\n"
        .. "People were turning away from me, as if they wanted to "
        .. "avoid eye contact with me as well. "
        .. "\"Keep calm...\" I told myself. "
        .. "My mind was still in the Xar world.\n\n"
        .. "All of a sudden a flying disc hit me in the face "
        .. "(which was not a coincidence), knocking my "
        .. "glasses off and turning my head. "
        .. "Not thinking, ^xffff00I looked at the sun^x00ff00. "
        .. "^xffffffBANG!!!^x00ff00 "
        .. "It was as if a flashbang went off in my mind."
    game_journal.add_txt(lang, "I3_LIBRARY_K_2_part_3", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_crit;{30}Part 3")

    local str = "^x00ff00The sun had entered my mind and extracted the Inner Core, "
        .. "like a military operation. "
        .. "I had trouble thinking clearly. "
        .. "I took the piece of paper I would look at to go in and out of "
        .. "the Xar world. "
        .. "However although I willed it to happen, I could not escape Xar.\n\n"
        .. "I was trapped inside Xar. "
        .. "Hours went by, days, weeks. "
        .. "My mind could not escape Xar.\n\n"
        .. "Normally when my mind was in the Xar world, it "
        .. "felt like I was 50% in my body and 50% in Xar. "
        .. "However now that I was trapped in Xar, it turned into "
        .. "60% which then turned into 70% and then even more."
    game_journal.add_txt(lang, "I3_LIBRARY_K_2_part_4", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_crit;{40}Part 4")

    ---------------------------------------------

    game_journal.add_txt_cb(lang, "I3_LIBRARY_CITIES_colchester",
        p.I3_LIBRARY_CITIES_colchester)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Towns / cities;{10}Colchester")

    str = "This is ^x00ff00Essex^!. "
        .. "You can find this in the central shaft inside "
        .. "Mahogany trees.\n\n"
        .. "To get in and out, you use your EMP to get past monsters.\n\n"
        .. "This city contains the ^x00ff00Plasma Shotgun^! weapon mode.\n\n"
        .. "The city also has the library about basements."
    game_journal.add_txt(lang, "I3_LIBRARY_CITIES_essex", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Towns / cities;{20}Essex")

    ---------------------------------------------

    game_journal.add_txt_cb(lang, "I3_LIBRARY_RED_MAZE_FLOWER",
        p.I3_LIBRARY_RED_MAZE_FLOWER)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{20}Red maze flower")

    ---------------------------------------------

    game_journal.add_txt_cb(lang, "I3_LIBRARY_JACKFRUIT_overview",
        p.I3_LIBRARY_JACKFRUIT_overview)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{30}Jackfruit;{10}Part 1")

    local str = "Here are some other places in the universe "
        .. "where you can find significant "
        .. "health upgrades:\n\n"
        .. "1) Large White Flowers.\n\n"
        .. "2) The center of Oranges (Huntington)."
    game_journal.add_txt(lang, "I3_LIBRARY_JACKFRUIT_where", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{30}Jackfruit;{20}Part 2")

    ---------------------------------------------

    local str = "The ground of the I3 Main Forest is covered with "
        .. "^x00ff00Dandelions^! (see the picture).\n\n"
        .. "It is easy to shrink into them, and to enlarge "
        .. "from them you use the tall white flowers.\n\n"
        .. "If you shrink enough, on the ground you can find "
        .. "^x00ff00Pumpkins^! and ^x00ff00Salmon Mushrooms^!.\n\n"
        .. "^xff0000Warning: going into a Salmon Mushroom requires a "
        .. "very strong EMP weapon."
    game_journal.add_txt(lang, "I3_LIBRARY_DANDELIONS_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{40}Dandelions")
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{50}Pumpkin")
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{60}Salmon mushroom")

    local str = "Inside some Salmon Mushrooms are ^x00ff00Black Mushrooms^!, "
        .. "which contain ^x00ff00Black Markets^!.\n\n"
        .. "At a black market, you can buy one EMP ammo for 50 gold, "
        .. "and ^xff00ffone nuke for 50 gold^!."
    game_journal.add_txt(lang, "I3_LIBRARY_DANDELIONS_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i3;{40}Flowers / trees;{70}Black mushroom")
end

function p.I3_LIBRARY_DESERT(chunk_id)
    --Ignoring chunk_id.
    local str = "Message from KY Cygni:\n\n"
        .. "^x0000ffBeware of deserts like this.\n\n"
        .. "Once you shrink into them it is hard to impossible to enlarge the usual way.\n\n"
        .. "Here are two useful places you can find in deserts:\n\n"
        .. "1) Aladdin's caves.  These have lots of gold at their end.\n\n"
        .. "2) Desert Flowers. In their center is a small desert."
    if( not game_genesis.enabled() ) then
        str = str .. " Within that inner desert you can improve your Minigun "
            .. "very quickly. However, you will probably need to constantly use your EMP. "
            .. "Also, if your EMP is already very strong, you can make it even stronger there. "
    end
    return str
end

function p.I3_LIBRARY_CITIES_colchester(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Colchester^!. "
        .. "You can find these growing on the branches on "
        .. "the trees of the I3 Main Forest.\n\n"
        .. "Being a town, it has a waypoint.\n\n"
    if( ga_get_b("worldgen.state.one_way") ) then
        str = str .. "The only way in and out involves passing by a White Box Device."
    else
        str = str .. "The only way in and out is by paying a "
        .. "one time toll of 300 gold to open the door."
    end
    return str
end

function p.I3_LIBRARY_RED_MAZE_FLOWER(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Red Maze Flowers^! can be found growing "
        .. "on the branches of the trees in the I3 Main Forest. "
        .. "They contain a 7x7x7 maze. "
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nYou have probably gathered that having a strong "
            .. "EMP weapon is important for navigating the universe. "
            .. "The treasure room of a Red Maze Flower has many EMP upgrades, "
            .. "including many EMP Radius upgrades.\n\n"
            .. "Since a Red Maze Flower has waypoints inside of it, "
            .. "if you are clever you can use one of these mazes to "
            .. "restock your ammo. "
    end
    str = str .. "\n\n^xff0000Warning: these mazes take time."
    return str
end

function p.I3_LIBRARY_JACKFRUIT_overview(chunk_id)
    --Ignoring chunK_id.
    local str = "^x00ff00Jackfruits^! can be found growing "
        .. "on the branches of the trees in the I3 Main Forest. ";
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nThey contain many health upgrades, "
            .. "but you probably need a strong EMP weapon in order "
            .. "to get them.\n\n"
            .. "There are also lots of Plasma Damage upgrades inside.";
    end
    return str
end

-------------------------------------------------------------------------------
