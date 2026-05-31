--File: game_journal_english_i2_mystic_vine.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "MYSTIC_VINE_TEXT", p.MYSTIC_VINE_TEXT)
    game_journal.add_path("@area;@area_i2;@area_i2_vine;@area_i2_vine_mystic;{10}Overview")
end

function p.MYSTIC_VINE_TEXT(chunk_id)
    --Ignoring chunk_id.
    str = "This is a ^x00ff00Mystic Vine^!.\n\n"
        .. "If you shrink enough, you can enter through the "
        .. "^xff00ffpurple^! walls.\n\n"
        .. "On the inside is a giant shaft with a "
        .. "^x808080black^! core shaft in the center. "
        .. "In the walls of this black core shaft you can find "
        .. "^x00ff00Montreal^! Cities.\n\n"
        .. "At the center of that core shaft there is a smaller "
        .. "^xff00ffpurple^! core shaft. "
        .. "Inside the purple walls of that shaft you can find the "
        .. "cities of Montreal "
        .. "and sometimes ^x00ff00Toronto^!.\n\n"
        .. "At the center of that purple shaft you can find another ^x808080black^! core shaft";
    if( not game_genesis.enabled() ) then
        str = str .. " which has many ^x00ff00Mystic^! monsters";
    end
    str = str .. ".\n\n"
        .. "Remember: "
        .. "^xff00ffpurple^! "
        .. "^x808080black^! "
        .. "^xff00ffpurple^! "
        .. "^x808080black^!."
    return str
end

-------------------------------------------------------------------------------
