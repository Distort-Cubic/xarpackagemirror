--File: game_journal_english_i2_violets.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffAre there shortcuts into Creeping Jeni plants?";
    game_journal.add_txt(lang, "VIOLETS_OUT_3_EXIT", str)
    game_journal.add_path("@area;@area_i2;@area_i2_creep;{20}Quick entrance")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Jane gave me a contact for the "
        .. "^xff0000Maze Encoding Team^x00ff00. "
        .. "His name was ^xffffffTom^x00ff00.\n\n"
        .. "His team took the "
        .. "\"client's computational task to be performed\", "
        .. "and they encoded the task into a maze. "
        .. "By my team solving one of their mazes, "
        .. "one could reconstruct a solution to the client's problem."
    game_journal.add_txt(lang, "VIOLETS_OUT_4_EXIT_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_tom;@yang_ima_random_tom_meet;{10}Part 1")

    local str = "^x00ff00Who are these clients? "
        .. "What is the nature of these mazes? "
        .. "Who is pulling all the strings?\n\n"
        .. "I had many questions for him, but he did not answer them. "
        .. "At first I thought he did not answer because of security "
        .. "issues, but I gradually got the impression that he did "
        .. "not know these answers himself.  He was just another link "
        .. "in the chain."
    game_journal.add_txt(lang, "VIOLETS_OUT_4_EXIT_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_tom;@yang_ima_random_tom_meet;{20}Part 2")

    local str = "^x00ff00He was dressed informally, not the typical work "
        .. "attire. He was wearing a T-shirt with a picture of the "
        .. "Milky Way Galaxy on it.\n\n"
        .. "I wanted answers from him, so I willed myself to enter the "
        .. "hidden world. I stared in his eyes, then back at his shirt. "
        .. "Then I saw the words flash into my mind:\n\n"
        .. "^xff0000 Sagittarius A*^x00ff00,\n\n"
        .. "the supermassive black hole at the center of our galaxy. "
        .. "The Inner Mechanization Agency's secret boss. "
        .. "Perhaps literally not a black hole? "
        .. "Perhaps I should say \n\n\"^xff0000Codename Sagittarius A*^x00ff00\"."
    game_journal.add_txt(lang, "VIOLETS_OUT_4_EXIT_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_tom;@yang_ima_random_tom_meet;{30}Part 3")
end

-------------------------------------------------------------------------------
