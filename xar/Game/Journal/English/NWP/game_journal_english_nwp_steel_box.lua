--File: game_journal_english_nwp_steel_box.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "STEEL_BOX_ENTRANCE",
        p.STEEL_BOX_ENTRANCE)
    game_journal.add_path("@area;@area_nwp;@area_nwp_box;{40}Steel box")
end

function p.STEEL_BOX_ENTRANCE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Steel Box^!. "
    if( game_genesis.enabled() ) then
        str = str .. "The treasure room is at the very bottom. "
    else
        str = str .. "You can find a Railgun Max Ammo upgrade "
            .. "in the treasure room at the "
            .. "very bottom. "
            .. "There is also one bonus treasure room located "
            .. "somewhere between here and the main treasure room. "
    end
    str = str .. "\n\nThere is also either a Cardboard Box "
        .. "or a Small Black Flower next to the treasure room."
    return str
end

-------------------------------------------------------------------------------
