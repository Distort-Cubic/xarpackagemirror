--File: game_journal_english_i3_starksboro.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I got trapped in the Fractal Block World, "
        .. "I would do things and have no memory of doing them. "
        .. "What did I blab to people without remembering? "
        .. "Did I tell Jane about Inner Botany theory? "
        .. "Did I tell Tom about all those black holes?"
    game_journal.add_txt(lang, "STARKSBORO_WP", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_mem;{10}Who did I blab to?")
end

-------------------------------------------------------------------------------
