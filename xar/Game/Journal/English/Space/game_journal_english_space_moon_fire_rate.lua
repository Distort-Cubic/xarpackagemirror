--File: game_journal_english_space_moon_fire_rate.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    --Weird C++ location.
    game_journal.add_txt_cb(lang, "SPACE_TOP_2_FORBIDDEN_PLANET_CASE",
        p.SPACE_TOP_2_FORBIDDEN_PLANET_CASE)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_firerate;{10}Overview")
end

function p.SPACE_TOP_2_FORBIDDEN_PLANET_CASE(chunk_id)
    local str = "This is a ^x00ff00Fire Rate Moon^!.\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "^xff00ffAt the core of this moon are two quite rare upgrades: \n\n"
            .. "1) Plasma Fire Rate\n\n"
            .. "2) Rocket Fire Rate."
    end
    str = str .. "\n\n^xff0000Once you shrink here, the only back here is by using the Pink Rings "
        .. "in the center of the moon. "
        .. "Also, there are white box devices surrounding this white case."
    return str
end

-------------------------------------------------------------------------------
