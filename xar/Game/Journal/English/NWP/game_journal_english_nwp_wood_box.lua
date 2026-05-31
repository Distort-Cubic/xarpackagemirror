--File: game_journal_english_nwp_wood_box.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "WOOD_BOX_ENTRANCE",
        p.WOOD_BOX_ENTRANCE)
    game_journal.add_path("@area;@area_nwp;@area_nwp_box;{30}Wood box")
end

function p.WOOD_BOX_ENTRANCE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Wood Box^!. "
    if( game_genesis.enabled() ) then
        str = str .. "The treasure room is at the very bottom. "
    else
        str = str .. "You can find a Minigun Fire Rate "
            .. "upgrade in the treasure room at the very bottom. "
    end
    str = str .. "\n\nThere is also a Cardboard Box "
        .. "next to the treasure room."
    return str
end

-------------------------------------------------------------------------------
