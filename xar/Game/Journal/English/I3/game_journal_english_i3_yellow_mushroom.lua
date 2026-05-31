--File: game_journal_english_i3_yellow_mushroom.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "You suggested that my problem might be "
        .. "chemical in nature.\n\n"
        .. "The thing about chemicals is that there "
        .. "are layers to the universe deeper than "
        .. "chemicals.\n\n"
        .. "There are two sides to this idea."
    game_journal.add_txt(lang, "YELLOW_MUSHROOM_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_chem;{10}Part 1")

    local str = "^x00ff00On the one hand, how could chemicals "
        .. "help with a problem that occurs deeper "
        .. "in the system?\n\n"
        .. "For example, if someone is doubting "
        .. "the nature of math, "
        .. "why would they be confident about "
        .. "the nature of physics?"
    game_journal.add_txt(lang, "YELLOW_MUSHROOM_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_chem;{20}Part 2")

    local str = "^x00ff00On the other hand, "
        .. "chemicals are like battlecruisers "
        .. "which hold deeper "
        .. "components of reality inside themselves. "
        .. "They can launch smaller ships, "
        .. "which can in turn launch "
        .. "even smaller ships."
    game_journal.add_txt(lang, "YELLOW_MUSHROOM_TREASURE_k_part3", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_chem;{30}Part 3")

    local str = "^xff00ffThere is a Steel Box here 50% of the time.^!"
    game_journal.add_txt(lang, "YELLOW_MUSHROOM_TREASURE_steel_box", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_ym;{10}Steel box here")
end

-------------------------------------------------------------------------------
