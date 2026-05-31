--File: game_journal_english_i2_mountains.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "^xffffffTom^x00ff00 from the Maze Encoding Team had this smug demeanor "
        .. "like he knew something that nobody else knew. "
        .. "One day when I came to work I bumped into him and he told me "
        .. "that I reminded him of such and such character from a TV show. "
        .. "I told him that I felt like people I knew where the combinations "
        .. "of various characters from shows.\n\n"
        .. "\"Ahh, the Integration Engine,\" said Tom. "
        .. "\"So K, how many minds do you think have ever been integrated into one before?\" ";
    game_journal.add_txt(lang, "I2_MOUNTAINS_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_tom;@yang_ima_random_tom_int;{10}Part 1")

    str = "^xff00ff\"Stop being a tool-bag\"^x00ff00 said Jane to Tom. "
        .. "She came to my rescue. "
        .. "^xff00ff\"I am pretty sure there is no such thing as the \"Integration Engine.\"^x00ff00\n\n"
        .. "It's a funny thing when you know some other-worldly thing is happening, "
        .. "and so then you take any off handed joke someone makes seriously.\n\n"
        .. "For what it is worth, I think Jane knows more about life than Tom. ";
    game_journal.add_txt(lang, "I2_MOUNTAINS_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_tom;@yang_ima_random_tom_int;{20}Part 2")
end

-------------------------------------------------------------------------------
