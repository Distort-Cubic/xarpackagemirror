--File: game_journal_english_i2_pink_puzzle.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I wanted to learn more about what the "
        .. "^xff00ffMaze Solution Verification Team^x00ff00 did "
        .. "with the solutions to the mazes we solved.\n\n"
        .. "I asked a member of this team, and they said they were "
        .. "not at liberty to discuss it."
    game_journal.add_txt(lang, "I2_PINK_PUZZLE_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_verify_team;{10}Part 1")

    local str = "^x00ff00I asked my coworker Jane once I got to know her more, "
        .. "and she guessed that various things happened. "
        .. "For one, she thought that they transformed the solution into "
        .. "another solution that was \"easy to verify\" that it was "
        .. "indeed a solution.\n\n"
        .. "And as another variant of this, she thought they converted "
        .. "the solution we found into a solution which one could "
        .. "EXTREMELY quickly check if it was \"probably\" a solution.\n\n"
        .. "This was all very abstract and didn't really answer my question."
    game_journal.add_txt(lang, "I2_PINK_PUZZLE_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_verify_team;{20}Part 2")

    local str = "^x00ff00What if when I looked at a billboard on the road, "
        .. "my hidden mind (and other people's hidden minds) were "
        .. "verifying that something was indeed "
        .. "a solution to one of these mysterious mazes. "
        .. "A solution that was somehow inserted into the manufacture "
        .. "of the billboard. "
        .. "It was a far out thought, but I was driven to understand the "
        .. "nature of all this maze solving."
    game_journal.add_txt(lang, "I2_PINK_PUZZLE_TREASURE_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_verify_team;{30}Part 3")
end

-------------------------------------------------------------------------------
