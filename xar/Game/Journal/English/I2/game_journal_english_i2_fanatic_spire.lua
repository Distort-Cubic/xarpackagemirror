--File: game_journal_english_i2_fanatic_spire.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Fanatic Spire^!. "
        .. "Inside there are many Rocket upgrades.\n\n"
        .. "At the bottom green square there are more Rocket upgrades "
        .. "and also a ^xffff00Golden Yellow Flower^!.\n\n"
        .. "Part of the way down there is a orange cube with an X "
        .. "that has significant Cannon upgrades."
    game_journal.add_txt(lang, "FANATIC_SPIRE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fanspire;{10}Overview")

    game_journal.add_txt_cb(lang, "FANATIC_SPIRE_TREASURE_2_k_part1",
        p.FANATIC_SPIRE_TREASURE_2_k_part1)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_unverified;{10}Part 1")

    local str = "^x00ff00\"Is that a rule? I did not see anything about that in the handbook,\" I said.\n\n"
        .. "^xff00ff\"Its not a hard rule... It is more like a rule which is sometimes meant "
        .. "to be broken.\"^x00ff00\n\n"
        .. "With that, she snatched the puzzle from my desk and immediately started filling "
        .. "in numbers. "
        .. "Within a few seconds, she placed it down on my desk.\n\n"
        .. "^xff00ff\"That one is ready for the verification team.\" She smirked.^x00ff00\n\n"
        .. "I checked it over and it looked right. I asked how she solved it so quickly.\n\n"
        .. "^xff00ff\"That's easy: I am not one Jane but a superposition of Janes, so I solved "
        .. "it in parallel.\"^x00ff00"
    game_journal.add_txt(lang, "FANATIC_SPIRE_TREASURE_2_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_unverified;{20}Part 2")
end

--It doesn't capture the full effect if the player reads this
--from their journal.
function p.FANATIC_SPIRE_TREASURE_2_k_part1(chunk_id)
    local seed = -1
    if( chunk_id >= 0 ) then seed = ga_chunk_id_to_seed(chunk_id) end
    ga_srand(seed)
    local type = ga_randi(1,2)
    --
    local color_str1 = ""
    if( type == 1 ) then color_str1 = "^xff0000red^x00ff00" end
    if( type == 2 ) then color_str1 = "^x0000ffblue^x00ff00" end
    --
    local color_str2 = ""
    if( type == 1 ) then color_str2 = "blue" end
    if( type == 2 ) then color_str2 = "red" end

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "\"I thought you were wearing a "
        .. color_str1
        .. " scarf today!\" I said.\n\n"
        .. "^xff00ff\"Nope\" said my talented coworker Jane. \"Its been "
        .. color_str2
        .. " all day.\"^x00ff00\n\n"
        .. "This was long before she got sick. "
        .. "She spotted a Sudoku puzzle on my desk. "
        .. "She asked where I found it and I told her I found it "
        .. "on the floor of a coffee shop.\n\n"
        .. "^xff00ff\"You know, you really should not be solving unverified "
        .. "puzzles at work.\"^x00ff00"
    return str
end

-------------------------------------------------------------------------------
