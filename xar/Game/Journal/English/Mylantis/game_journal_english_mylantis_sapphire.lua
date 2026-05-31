--File: game_journal_english_mylantis_sapphire.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from Sagittarius A*:\n\n"
        .. "^x0000ffThe Omega Core is the amalgamation of Inner Cores "
        .. "mined throughout the multiverse (many via the Bulk). "
        .. "This Omega Core is contained in the top city of Mylantis "
        .. "(below the surface).\n\n"
        .. "The Omega Core is central to the Re-Creation "
        .. "technology of Mylantis. "
        .. "One project of note is the expansion of Boston Consent Bootstrapping. "
        .. "This is the algorithm for the extraction of consent between parties "
        .. "in the Fractal Block World. The more complete the construction of the "
        .. "Omega Core, the more consent can be extracted for extreme endeavors "
        .. "(endeavors that probe the true depth of inner space). "
        .. "The development of Boston Consent Bootstrapping is more than just "
        .. "trying to solve a legal quagmire; "
        .. "it helps us understand the safety of probing deep reality "
        .. "and what the consequences would be."
    game_journal.add_txt(lang, "SAPPHIRE_GEM_TREASURE", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_bcb")
end

-------------------------------------------------------------------------------
