--File: game_journal_english_mylantis_denver.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "This is Denver. You can find a desert next to a forest. "
        .. "When two biomes of the world are next to each other, it "
        .. "creates a unique combination. "
        .. "It is like two different atoms joining to form a molecule, "
        .. "like you and me.\n\n"
        .. "This is not a bad place to harvest some mushrooms.\n\n"
        .. "Oh, and perhaps this is obvious, but in the Tau Caves "
        .. "you can also find two different biomes next to each other, "
        .. "where you can shrink in one giving you easy access to the other."
    game_journal.add_txt(lang, "DENVER_PENTHOUSE", str)
    game_journal.add_path("@area;@area_my;@area_my_denver;{10}Overview")
end

-------------------------------------------------------------------------------
