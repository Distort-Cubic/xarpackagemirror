--File: game_journal_english_space_root_pink_prison.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "The 9th floor of the Inner Mechanization Agency "
        .. "(the floor with the VIP lounge) was very maze-like. "
        .. "Not only that, but I kept on making mistakes when I "
        .. "tried to draw a map of it.  It was as if my maps were "
        .. "constantly becoming out of date."
    game_journal.add_txt(lang, "SPACE_ROOT_PINK_PRISON_TREASURE_k", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_9floor;{10}Maps constantly becoming out of date")
end

-------------------------------------------------------------------------------
