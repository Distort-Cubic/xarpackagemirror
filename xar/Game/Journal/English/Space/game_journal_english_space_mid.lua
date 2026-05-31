--File: game_journal_english_space_mid.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^x00ff00Outer Space Level 2^!. "
        .. "This consists of two regions: filaments and voids.\n\n"
        .. "Filaments consist of HUNDREDS of galaxies all "
        .. "clustered together. "
        .. "Voids are in between the filaments. "
        .. "Inside voids you can find gray cubes that are "
        .. "^x00ff00Alpha Menger Sponges^!.\n\n"
        .. "To grow into Outer Space Level 1, you must reach "
        .. "a giant red block with a \"1\" on it.\n\n"
        .. "In Outer Space Level 0 you can reach ^x00ff00Mylantis^!, "
        .. "which is orange with an \"M\" on it. "
        .. "Mylantis is the largest structure in the universe."
    game_journal.add_txt(lang, "SPACE_MID_VOID_1", str)
    game_journal.add_path("@area;@area_space;@area_space_lev_2;{10}Overview")
end

-------------------------------------------------------------------------------
