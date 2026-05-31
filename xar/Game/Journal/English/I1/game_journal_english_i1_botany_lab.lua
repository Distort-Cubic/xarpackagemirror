--File: game_journal_english_i1_botany_lab.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from SN1987A: \n\n"
        .. "^x0000ffThis Botany Lab has turned out to be the perfect place to "
        .. "analyze Infinity Flowers.  They like to grow in the deepest "
        .. "levels of caves; \"demon layers\" have some, \"orc layers\" "
        .. "have even more, etc."
    game_journal.add_txt(lang, "BOTANY_LAB_ENTRANCE_1_part1", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;{10}Overview;{10}Part 1")
    game_journal.add_path("@lore;@lore_area;@lore_area_i1;@lore_area_i1_bot;{20}Overview;{10}Part 1")

    local str = "^x0000ffMy colleagues and I have written our findings about "
        .. "the internal structure of the Infinity Flowers in libraries. "
        .. "These are scattered throughout the lab "
        .. "(specifically, these libraries look like black towers "
        .. "and they are built on top of the green stuff)."
    game_journal.add_txt(lang, "BOTANY_LAB_ENTRANCE_1_part2", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;{10}Overview;{20}Part 2")
    game_journal.add_path("@lore;@lore_area;@lore_area_i1;@lore_area_i1_bot;{20}Overview;{20}Part 2")

    local str = "^x0000ffIn the event that the plants in this Botany Lab "
        .. "contaminate the surrounding region, "
        .. "the contamination should certainly be contained by "
        .. "the outer blue wall of this Blue Bubble."
    game_journal.add_txt(lang, "BOTANY_LAB_ENTRANCE_1_part3", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;{10}Overview;{30}Part 3")
    game_journal.add_path("@lore;@lore_area;@lore_area_i1;@lore_area_i1_bot;{20}Overview;{30}Part 3")

    local str = "Message from NGC 1277: \n\n"
        .. "^x0000ffSN1987A really is a piece of work. "
        .. "While I admit his work on the botany of inner space "
        .. "is groundbreaking, his architecture skills are crappy. \n\n"
        .. "The gaskets used in his Botany Labs, "
        .. "and other rooms he made, allow for leakage. "
        .. "For example, while inside a Purple Dark Hole room "
        .. "of a Blue Bubble, I discovered that after shrinking "
        .. "one could squeeze through the walls and into the "
        .. "surrounding pipe-lattice.\n\n"
        .. "There, I found (although scarce) Infinity Flowers "
        .. "growing on the pipes."
    game_journal.add_txt(lang, "BOTANY_LAB_BIG_RED_TREASURE", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;{20}Secret")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I am worried that my memory might be failing.\n\n"
        .. "Do you remember the first time I met you? "
        .. "We were in abstract algebra class in college "
        .. "and the teacher asked why every permutation "
        .. "of the set {1,...,n} is the product "
        .. "of transpositions.\n\n"
        .. "You shouted right out "
        .. "\"because bubble sort works!\"\n\n"
        .. "A few of us students had a little chuckle about that "
        .. "and the teacher asked you to be more mathematical. "
        .. "But I liked your style."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_1_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_1;{10}Part 1")

    local str = "^x00ff00Am I remembering this correctly? "
        .. "I asked you if you would be my lab partner "
        .. "for my research project in the fractal labs "
        .. "of the theoretical metaphysics department.\n\n"
        .. "I was trying to prove a theorem I called "
        .. "the \"Xar\" theorem "
        .. "and you agreed to help."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_1_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_1;{20}Part 2")

    local str = "^x00ff00Although this project we did was based in "
        .. "mathematics, I felt that if the Xar theorem was true, "
        .. "it would suggest the existence of a certain inner world: "
        .. "an inner dimension to reality "
        .. "(which in my mind I would later call Xar, after our theorem).\n\n"
        .. "Is this dimension created or discovered? "
        .. "Well, I think it is discovered, but I "
        .. "was not the first to discover it. "
        .. "I see messages from other entities "
        .. "(or is that my imagination)?"
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_1_part3", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_1;{30}Part 3")

    local str = "^x00ff00Back then, the Xar theorem was as deep as I could "
        .. "understand and it was as far as I thought anybody knew about "
        .. "this line of research.\n\n"
        .. "It was only later that I discovered the secret extension "
        .. "of this theory which is ^xff00ffInner Botany Theory^!.^x00ff00 "
        .. "They do not teach that in college, or perhaps anywhere "
        .. "in normal reality for that matter. "
        .. "However I think the public has a right to know."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_1_part4", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_1;{40}Part 4")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Do you remember how the chemicals smelled so terrible "
        .. "in the fractal lab? "
        .. "We would go back to our dorm room after working and put our "
        .. "clothes in plastic bags. "
        .. "Our friends joked that we stank like fractals. "
        .. "You and I had that smell in common."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_2_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_2;{10}Part 1")

    local str = "^x00ff00Remember the task we were given to learn the equipment? "
        .. "We were told to use the giant room sized microscope to zoom "
        .. "into the \"^xff00ffMandelbrot Set^x00ff00\" fractal. "
        .. "We were told to zoom in and look for a \"^xff00ffminibrot^x00ff00\". "
        .. "This was a miniature copy of the entire Mandelbrot fractal "
        .. "that occurred occasionally inside the fractal."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_2_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_2;{20}Part 2")

    local str = "^x00ff00A minibrot is a good analogy of what is an "
        .. "^xff00ffInner Core^x00ff00 "
        .. "(that I would learn about later). "
        .. "You have to search for it, but once you find it, "
        .. "you can in a sense recover the entire universe "
        .. "you started with. "
        .. "Searching for it was like solving a maze."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_2_part3", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_2;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I keep reliving how we proved our theorem. "
        .. "So what was the nature of our Xar theorem anyway? "
        .. "Well, there are many mathematical theories. "
        .. "There is the \"^xff00ffAlpha Theory^x00ff00\", "
        .. "which many mathematicians use as their foundation.\n\n"
        .. "Then there was the \"^xff00ffBeta Theory^x00ff00\" "
        .. "which was much stronger (and there was an endless "
        .. "sequence of even stronger theories after that)."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_3_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_3;{10}Part 1")

    local str = "^x00ff00Proponents of the Alpha Theory would make claims like "
        .. "the Beta Theory is irrelevant to physics. "
        .. "They would try to prove (for sport or out of prejudice) "
        .. "that the Beta Theory was ^xff0000inconsistent^x00ff00. "
        .. "They would even publicize incorrect "
        .. "proofs of the inconsistency of the Beta Theory."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_3_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_3;{20}Part 2")

    str = "^x00ff00I am convinced that the Beta Theory is "
        .. "important for ^xff00fftheoretical metaphysics^x00ff00."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_3_part3", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_3;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "The pompous claim that the Beta Theory "
        .. "was irrelevant to physics was a thorn in my side. "
        .. "I decided to devise a sequence of physical laws "
        .. "(the Xar Laws) whose consistency implied the consistency of "
        .. "the Beta Theory.\n\n"
        .. "Remember our kooky advisor in the fractal labs "
        .. "began these laws in his research, "
        .. "but we followed in his footsteps."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_4_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_4;{10}Part 1")

    local str = "^x00ff00So anyone who believed that the consistency "
        .. "of the Beta Theory could not be \"proved\" "
        .. "would have to agree that there was "
        .. "no way to prove that the actual universe followed the Xar Laws.\n\n"
        .. "So, the universe following the Xar Laws would be a hidden "
        .. "level to reality.\n\n"
        .. "Something you cannot prove."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_4_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_4;{20}Part 2")

    local str = "^x00ff00By the way, if you take any set of physical laws "
        .. "about the universe you can add the law "
        .. "\"The Beta Theory is consistent\".\n\n"
        .. "^xff0000This is cheating.^x00ff00 "
        .. "The resulting theory is not really "
        .. "\"^xff00ffnatural^x00ff00\", "
        .. "and instead it is what is called an "
        .. "\"^xff00ffinstrumentalist^x00ff00\" theory.\n\n"
        .. "Our Xar Laws were somewhat natural, but it was clear there was "
        .. "room for improvement. "
        .. "Perhaps a secret research organization had "
        .. "a more refined set of laws."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_4_part3", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_4;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I proved that the consistency of the Xar Laws implied "
        .. "the consistency of the Beta Theory. "
        .. "However our advisor made us address whether or not "
        .. "the Xar Laws were actually consistent."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_5_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_5;{10}Part 1")

    local str = "^x00ff00This is where you came in. "
        .. "You bought a box of 24 chocolate cupcakes, "
        .. "took them into the fractal lab. "
        .. "You stayed there all night. "
        .. "In the morning your hair was a mess but you "
        .. "emerged with a proof that the consistency "
        .. "of the Beta Theory implied the consistency of "
        .. "the Xar Laws."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_5_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_5;{20}Part 2")

    local str = "^x00ff00Now we had both directions. "
        .. "Thus concluded what we called our "
        .. "^xff00ffXar Theorem^x00ff00:\n\n"
        .. "^xffff00The Beta Theory is consistent if and only if "
        .. "the Xar Laws are consistent.^x00ff00\n\n"
        .. "An object satisfying the Beta Theory was like an Inner Core "
        .. "in any universe satifying the Xar Laws."
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_5_part3", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_5;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "So the Xar Theorem made me think there "
        .. "was a hidden world.\n\n"
        .. "An extra layer to reality.\n\n"
        .. "Why didn't staring at the Xar Theorem long "
        .. "enough cause me to enter into the hidden world? "
        .. "I already believed that the consistency of the "
        .. "Beta Theory was a transcendent truth. "
        .. "Why wasn't that belief enough?\n\n"
        .. "Why did I need to find that piece of paper "
        .. "on a bulletin board?"
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_6_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_6;{10}Part 1")

    local str = "^x00ff00"
        .. "I think I will never know exactly why.\n\n"
        .. "Perhaps there are traps and safeguards "
        .. "preventing people from entering the "
        .. "hidden world:\n\n"
        .. "mazes created by ^xff00ffRe-Creation^x00ff00 technology.\n\n"
        .. "Are these created by humans?"
    game_journal.add_txt(lang, "BOTANY_LAB_FRIEND_6_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_6;{20}Part 2")
end

-------------------------------------------------------------------------------
