--File: game_journal_english_nwp_cardboard_box.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "PAPER_BOX_ENTRANCE",
        p.PAPER_BOX_ENTRANCE)
    game_journal.add_path("@area;@area_nwp;@area_nwp_box;{10}Paper box")
end

function p.PAPER_BOX_ENTRANCE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Paper Box^!. "
    if( game_genesis.enabled() ) then
         str = str .. "The treasure room is at the very bottom. "
    else
        str = str .. "You can find Plasma, Laser, and Minigun "
            .. "upgrades in the treasure room at the "
            .. "very bottom. "
            .. "There is also one bonus treasure room located "
            .. "somewhere between here and the main treasure room. "
    end
    str = str .. "\n\n^xff0000Do not enter if you are claustrophobic.^!"
    return str
end

-------------------------------------------------------------------------------
