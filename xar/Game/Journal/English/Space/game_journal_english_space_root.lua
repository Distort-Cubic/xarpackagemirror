--File: game_journal_english_space_root.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the root chunk of the world.\n\n"
        .. "There is NOTHING outside this chunk.\n\n"
        .. "Welcome to the edge of the universe.\n\n"
        .. "^xff00ffDid you think you would find secret treasure here? "
        .. "Perhaps lots of Plasma Regeneration Upgrades?^!\n\n"
        .. "These ^x0000ffBlue Rings^! will bring you "
        .. "inside the infinity cube in the center. "
        .. "Specifically, you will be brought to the top "
        .. "of the planet Mylantis."
    game_journal.add_txt(lang, "ROOT", str)
    game_journal.add_path("@area;@area_space;@area_space_edge;{30}The root")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I do not think the universe has an end. "
        .. "So if one day I find what appears to be the end, "
        .. "then I will learn that the world I "
        .. "was living in was not the true world."
    game_journal.add_txt(lang, "ROOT_SECRET", str)
    game_journal.add_path("@lore;@lore_phil;{10}The true universe has no end")
end

-------------------------------------------------------------------------------
