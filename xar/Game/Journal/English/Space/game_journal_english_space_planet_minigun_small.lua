--File: game_journal_english_space_planet_minigun_small.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "SMALL_MINIGUN_PLANET_MOD_WP2",
        p.SMALL_MINIGUN_PLANET_MOD_WP2)
    game_journal.add_path("@area;@area_space;@area_space_planet;@area_space_planet_smallmini;{10}Overview")
end

function p.SMALL_MINIGUN_PLANET_MOD_WP2(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Small Minigun Planet^!.\n\n"
        .. "There are shafts in the ground "
        .. "that lead you into the center of this planet. "
    if( not game_genesis.enabled() ) then
        str = str .. "At the bottom is a treasure room that improves your Minigun weapon "
            .. "(including Max Ammo upgrades). "
    end
    return str
end

-------------------------------------------------------------------------------
