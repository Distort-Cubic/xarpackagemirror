--File: game_journal_english_i2_danville.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "DANVILLE_ABOVE", p.DANVILLE_ABOVE)
    game_journal.add_path("@area;@area_i2;@area_i2_city;@area_i2_city_danville;{10}Overview")

    p.trophy_locations()

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I decided to try to enter the hidden world of Xar "
        .. "at work. "
        .. "I looked at the paper I stole from the bulletin board "
        .. "and willed myself into the Xar world. "
        .. "My mind was transported into Xar.\n\n"
        .. "My body performed my job: I was solving a very large "
        .. "scale maze. Doing so, I felt an interesting sensation. "
        .. "As I was getting closer to finding the exit of "
        .. "the maze (which at work we call "
        .. "^xff00ffcores^x00ff00), "
        .. "I could feel something growing in my soul. "
        .. "Maybe growing is not the right word. "
        .. "Maybe the right words are \"being constructed\"."
    game_journal.add_txt(lang, "DANVILLE_FRIEND_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_ic;@yang_ima_ic_disc;{10}Part 1")

    local str = "^x00ff00It was as if the energy in the "
        .. "food I ate was being converted into this "
        .. "growing core inside me. "
        .. "But the energy from the food I ate was not enough: "
        .. "my heart and mind were also required to "
        .. "build this core.\n\n"
        .. "Once I solved the maze, "
        .. "I perceived this bright spherical object "
        .. "inside me and my senses were heightened.\n\n"
        .. "^xffffffI think this object should be called an "
        .. "Inner Core.^!";
    game_journal.add_txt(lang, "DANVILLE_FRIEND_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_ic;@yang_ima_ic_disc;{20}Part 2")

    local str = "^x00ff00I was excited to go home and "
        .. "use this core to explore the plants "
        .. "in my apartment with my mind. "
        .. "I went out to leave half an hour early when I bumped "
        .. "into this guy that was always "
        .. "talking about his boat.\n\n"
        .. "\"^xff0000Got any plans for the weekend?^x00ff00\" " 
        .. "he said as he smiled with a stupid grin.\n\n"
        .. "The instant we made eye contact, "
        .. "I could feel the bright core that I had "
        .. "constructed leave me and be transferred into his mind. "
        .. "My heightened senses dropped like someone "
        .. "had just turned down the lights.\n\n"
        .. "My Inner Core was robbed from me. "
        .. "I am not sure what that man does for his job. "
        .. "I wonder if his true job is just to make eye "
        .. "contact with the maze solvers.";
    game_journal.add_txt(lang, "DANVILLE_FRIEND_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_ic;@yang_ima_ic_disc;{30}Part 3")

    local str = "^x00ff00Many other times I would try "
        .. "to enter the Xar world with my mind and "
        .. "do my job at work. "
        .. "I was able to construct various cores, each one "
        .. "a little different from another.\n\n"
        .. "Most times he would take the core with his eyes. "
        .. "I found a pair of sunglasses on the ground of a park "
        .. "and I would wear them as I left the building.\n\n"
        .. "This helped somewhat. Unfortunately the building "
        .. "has a retinal scanner that you need to use to go "
        .. "in or out.\n\n"
        .. "Once I was able to get past the man, "
        .. "but the retinal scanner took the core inside me "
        .. "and it left me with a headache that lasted an hour. "
        .. "I prefer eye contact with the boat man over the scanner. ";
    game_journal.add_txt(lang, "DANVILLE_FRIEND_k_part4", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_ic;@yang_ima_ic_disc;{40}Part 4")

    local str = "^x00ff00The following became an obsession of mine: "
        .. "is there a way to take the Inner Cores I construct "
        .. "in my mind while solving mazes out of the building?\n\n"
        .. "The building has no windows, so I cannot "
        .. "have a friend standing outside the building who I make "
        .. "eye contact with.\n\n"
        .. "I wonder if there was a way to transfer "
        .. "the Inner Cores via eye contact to someone "
        .. "who has the ability to forward the cores "
        .. "to the appropriate channels.\n\n"
        .. "To figure out how to do this, "
        .. "I wanted to ask what a person would do if "
        .. "they had many Inner Cores. "
        .. "However instead I phrased it as "
        .. "\"what would you do if you had unlimited resources?\""
    game_journal.add_txt(lang, "DANVILLE_FRIEND_k_part5", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_ic;@yang_ima_ic_disc;{50}Part 5")
end

function p.DANVILLE_ABOVE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Danville^!! "
    if( not game_genesis.enabled() ) then
        str = str .. "There are three ways in and out.\n\n"
            .. "1) Go through a small maze followed by a 200 gold toll door. "
            .. "^xff00ffThere are nuke upgrades at the end of the maze.^!\n\n"
            .. "2) Go through a tube of monsters that requires an EMP blast "
            .. "to go through.\n\n"
            .. "3) Once you reach the penthouse, there is 1 gold toll door "
            .. "to the outside."
    end
    return str
end

function p.trophy_locations()
    local str = "There is a trophy in the ^x00ff00I2 Library^!. "
        .. "There is such a library at the top of the tower "
        .. "on each island in Fanatic Air."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_lib", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{10}I2 library")

    local str = "There is a trophy in the stem of ^x00ff00WIG Flowers^!. "
        .. "If you are inside an I2 or I3 WIG Flower and attempt to leave "
        .. "using Blue Rings, you will be caught in the stem of the WIG Flower. ";
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_wig", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{20}WIG flower")

    local str = "There is a trophy in each ^x00ff00Montreal City^!. "
        .. "These can be found in the Fanatic Air of I2."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_montreal", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{30}Montreal")

    local str = "There is a trophy by the main waypoint in each "
        .. "^x00ff00Toronto City^!."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_toronto", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{40}Toronto")

    local str = "In the Underground of a Toronto City there is a maze. "
        .. "In the Map Room of such a maze, there is a trophy."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_toronto_maze", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{50}Toronto maze")

    local str = "There is a trophy in each ^x00ff00Danville Town^!. "
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_danville", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{60}Danville")

    local str = "There is a trophy in each ^x00ff00Small Blue Flower^!. "
        .. "There is such a flower within this very town "
        .. "of Danville."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_small_blue_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{70}Small blue flower 1")

    local str = "There is a trophy in the treasure room of the "
        .. "^x00ff00secondary^! part "
        .. "of each ^x00ff00Small Blue Flower^!. "
        .. "There is a 50% chance you will find a secondary part "
        .. "inside the treasure room of the primary part."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_small_blue_flower2", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{80}Small blue flower 2")

    local str = "There is a trophy in the center of ^x00ff00Willow Trees^!. "
        .. "These are large pink trees that appear sometimes on "
        .. "Fanatic Islands."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_willow_tree", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{90}Willow tree")

    local str = "There is a trophy in the center of ^xff00ffDark Willow Trees^!. "
        .. "You can sometimes find these on the top of Fanatic Islands. "
        .. "You can also find one with a 50% chance at the center of Weed Rings."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_dark_willow_tree", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{100}Dark willow tree")

    local str = "There is a trophy in the central shaft of ^x00ff00Mystic Vines^!. "
        .. "You can find these hanging from (normal) Willow Trees."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_mystic_vine", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{110}Mystic vine")

    local str = "There is a trophy in the treasure room of each "
        .. "^x00ff00Raspberry^!. "
        .. "You can find Raspberries in many places, one of which "
        .. "is in the towers that appear on the islands in Fanatic Air "
        .. "(the towers with a library at the top)."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_raspberry", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{120}Raspberry")

    local str = "There is a trophy in the ^xff00ffWeed Ring^! structures. "
        .. "You can find these on the top of Fanatic Weeds in the same places "
        .. "you find Cannon Gyms (with a small probability). "
        .. "You can learn more about these in the "
        .. "I2 Library."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_fanatic_weed", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{130}Weed ring")

    local str = "There is a trophy in the treasure room of each "
        .. "^x00ff00Blue Mushroom^!. "
        .. "You can learn where to find Blue Mushrooms in the "
        .. "I2 Library."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_blue_mushroom", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{140}Blue mushroom")

    local str = "You can find a trophy in the treasure room of each "
        .. "^x00ff00Fanatic Spire^!, which can be found inside "
        .. "Fanatic Lattices and Violets."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_fanatic_spire", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{150}Fanatic spire")

    local str = "You can find a trophy in the treasure room of each "
        .. "^x00ff00Creeping Jeni Plant^!, which can be found inside Fanatic Spires."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_creeping_jeni", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 1;{160}Creeping jeni")

    local str = "There is a trophy inside ^x00ff00Violets^!.\n\n"
        .. "You can find these inside Creeping Jeni Plants "
        .. "and sometimes on the ground of the Minigun Ammo Forest."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_2_violets", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 2;{10}Violets")

    local str = "There is a trophy inside ^x00ff00I2 Mountains^!.\n\n"
        .. "These can be found in Ostrich Ferns (which can be found in Violets and Bubble Caves)."
    game_journal.add_txt(lang, "DANVILLE_TROPHY_LIST_2_i2_mountains", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{20}Part 2;{20}I2 mountains")
end

-------------------------------------------------------------------------------
