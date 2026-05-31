--File: game_journal_english_i3_treetop.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I got trapped in the Fractal Block World, "
        .. "I was able to go to work for a few days afterwards. "
        .. "However when I solved mazes and submitted them to the "
        .. "maze solution verification team, that team bounced them "
        .. "back to me, saying there was an error.\n\n"
        .. "But the thing was, I find it hard to believe there really "
        .. "was an error.  I don't make many mistakes. "
        .. "It made me mad.  Was I being shut out? "
        .. "I even stormed into the verification team office and made "
        .. "a bit of a stink.  I ended up taking the rest of the day off."
        -- .. "I have no trouble admitting it when I really do make a mistake, "
        -- .. "but these \"mistakes\" felt different.  I knew I was right."
    game_journal.add_txt(lang, "I3_TREETOP_TREASURE", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_error;@yang_trapped_error_work")
end

-------------------------------------------------------------------------------
