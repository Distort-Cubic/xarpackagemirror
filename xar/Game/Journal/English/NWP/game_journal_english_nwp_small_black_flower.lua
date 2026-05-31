--File: game_journal_english_nwp_small_black_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffIf you keep shrinking going deeper and "
        .. "deeper into the bottom of a Ying World forest, "
        .. "you will find interesting things."
    game_journal.add_txt(lang, "SMALL_2D_BLACK_FLOWER_ENTRANCE_shrink_in_ying_forest", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;{50}Shrink deeply into ying forests")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I entered this Fractal Block World "
        .. "out of my own curiosity. "
        .. "I wanted an inner world to exist, "
        .. "below normal scientifically testable reality. "
        .. "I searched for it for years without success. "
        .. "Even if I entered it, "
        .. "I knew I could probably never prove to someone "
        .. "else that I was in it. "
        .. "I wasn't looking for a formal proof that it existed. "
        .. "But I thought I could \"know\" for sure "
        .. "that I was there. "
        .. "That would be enough for me."
    game_journal.add_txt(lang, "SMALL_2D_BLACK_FLOWER_TREASURE_part1", str)
    game_journal.add_path("@lore;@lore_k_hidden;{10}I searched, then one day I found it;{10}Part 1")

    local str = "^x00ff00"
        .. "Then one day, while looking at a Yin-Yang "
        .. "symbol on some bulletin board, "
        .. "I felt something from another world "
        .. "\"nudge\" me from the Yang \"exposed world\" "
        .. "to the Yin \"hidden world\".\n\n"
        .. "It put me into a \"Ying World\" "
        .. "part of this Fractal Block World.\n\n"
        .. "The Ying World is a \"gateway\" into "
        .. "the broader hidden world of this strange universe."
    game_journal.add_txt(lang, "SMALL_2D_BLACK_FLOWER_TREASURE_part2", str)
    game_journal.add_path("@lore;@lore_k_hidden;{10}I searched, then one day I found it;{20}Part 2")

    local str = "^x00ff00"
        .. "I suppose it should be called the "
        .. "\"Yin\" World not the \"Ying\" World, "
        .. "but what are you gonna do."
    game_journal.add_txt(lang, "SMALL_2D_BLACK_FLOWER_TREASURE_part3", str)
    game_journal.add_path("@lore;@lore_k_hidden;{10}I searched, then one day I found it;{30}Part 3")
end

-------------------------------------------------------------------------------
