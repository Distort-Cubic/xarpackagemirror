--File: game_journal_english_i3_treetop_inner.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I got trapped in the Fractal Block World, "
        .. "not only did the maze solution verification team "
        .. "reject my maze solutions as wrong (even though I swear "
        .. "they were right) but I also made similar \"mistakes\" at home.\n\n"
        .. "I sometimes make mistakes, and I will admit that, "
        .. "but this was different.  I was not making mistakes but the universe "
        .. "was acting as if I had made mistakes."
    game_journal.add_txt(lang, "I3_TREETOP_INNER_END_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_error;@yang_trapped_error_def;{10}Part 1")

    local str = "^x00ff00Mistakes like the wrong letter showing up "
        .. "when I pressed a key on my computer, "
        .. "or my toothbrush being not where I left it.\n\n"
        .. "It felt like I lost my security clearance to the invisible machine "
        .. "that controls our world.\n\n"
        .. "But what was the mechanism for this? "
        .. "How could this be possible? "
        .. "I called these ^xff0000Universe Interfacing Errors^x00ff00, because "
        .. "my reality was being rejected by the surrounding world."
    game_journal.add_txt(lang, "I3_TREETOP_INNER_END_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_error;@yang_trapped_error_def;{20}Part 2")
end

-------------------------------------------------------------------------------
