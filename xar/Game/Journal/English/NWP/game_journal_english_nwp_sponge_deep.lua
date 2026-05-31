--File: game_journal_english_nwp_sponge_deep.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from Rigel:\n\n"
        .. "^x0000ffWhen I was a lad, shrinking to level 30 was a real rush. "
        .. "Now kids these days!  They shrink to very deep levels! "
        .. "See how deep you can go before the fabric of reality unravels.\n\n"
        .. "Warning: the program may exit if you go too deep."
    game_journal.add_txt(lang, "SPONGE_DEEP", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_sponge;{20}Deep sponge")
end

-------------------------------------------------------------------------------
