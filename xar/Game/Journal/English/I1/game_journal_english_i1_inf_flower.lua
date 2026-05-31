--File: game_journal_english_i1_inf_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from KY Cygni: \n\n"
        .. "^x0000ffWe believe the infinity flower is broken into 3 parts: Group #1, #2, and #3. \n\n"
        .. "We have fairly well colonized group #1 by erecting the cities of Williston "
        .. "and the towns of Bristol.^!"
    game_journal.add_txt(lang, "INFINITY_FLOWER_BASE_CAMP_2_kycygni_part1", str)
    game_journal.add_path("@area;@area_i1;@area_i1_inf;{10}The 3 groups (parts): I1, I2, I3;{10}Part 1")

    local str = "The abbreviation for Infinity Flower Group #1 is ^x00ff00I1^!,\n\n"
        .. "The abbreviation for Infinity Flower Group #2 is ^x00ff00I2^!, etc."
    game_journal.add_txt(lang, "INFINITY_FLOWER_BASE_CAMP_2_kycygni_part2", str)
    game_journal.add_path("@area;@area_i1;@area_i1_inf;{10}The 3 groups (parts): I1, I2, I3;{20}Part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Remember the day after we proved our Xar theorem in college, "
        .. "we got a phone call from an organization "
        .. "known as the\n\n"
        .. "^xff00ffInner Mechanization Agency^x00ff00.\n\n"
        .. "I don't blame you for not interviewing "
        .. "when you had a bad feeling about them."
    game_journal.add_txt(lang, "INFINITY_FLOWER_BASE_CAMP_2_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_job_offer;{10}Part 1")

    local str = "^x00ff00My interview was a two day ordeal "
        .. "involving solving mazes, "
        .. "solving logic puzzles, and answering moral dilemmas. "
        .. "All those strange questions should have raised a red flag "
        .. "with me too.\n\n"
        .. "^x00ff00I know I am asking a lot for you to help me. "
        .. "You know I still feel bad about "
        .. "not moving cross-country with you because I ended up "
        .. "getting the job offer and accepting it. "
        .. "Now I can see that the inner world pulled me in."
    game_journal.add_txt(lang, "INFINITY_FLOWER_BASE_CAMP_2_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_job_offer;{20}Part 2")
end

-------------------------------------------------------------------------------
