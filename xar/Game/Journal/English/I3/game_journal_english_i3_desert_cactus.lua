--File: game_journal_english_i3_desert_cactus.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I think that words are not enough to save me, "
        .. "but perhaps if we make eye contact, "
        .. "you could deploy a SWAT team into my mind. "
        .. "It would be as if a military particle P in your brain "
        .. "would be transmitted into mine."
    game_journal.add_txt(lang, "DESERT_CACTUS_FLOWER_k_part1", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_eye;{10}Part 1")

    local str = "^x00ff00You wanted to take the plane to see me, "
        .. "but I think a train would be safer. "
        .. "Higher up in the atmosphere there is more radiation, "
        .. "and this radiation could take out that particle P "
        .. "you need to deliver to me. "
        .. "This would be similar to how alpha particles can make "
        .. "\"alpha strikes\" on computers."
    game_journal.add_txt(lang, "DESERT_CACTUS_FLOWER_k_part2", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_eye;{20}Part 2")

    local str = "^x00ff00I know that sounds a little out there, "
        .. "but who knows if there is an underground "
        .. "building, perhaps like the building where I work, "
        .. "which contains the \"alpha particle team\". "
        .. "One of the floors has room upon room of drone "
        .. "pilots that control these tactical alpha particles."
    game_journal.add_txt(lang, "DESERT_CACTUS_FLOWER_k_part3", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_eye;{30}Part 3")
end

-------------------------------------------------------------------------------
