--File: game_journal_english_yw_ying_forest_deep.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffThe totem poles within Ying Forests have a secret:\n\n"
        .. "If you shrink, you can enter the question mark block to get Laser ammo. "
    game_journal.add_txt(lang, "YING_FOREST_DEEP_HANGING_GROWTH_LASER_TREASURE", str)
    game_journal.add_path("@area;@area_yw;@area_yw_gen;{10}Totem poles;{20}Secret laser ammo")
end

-------------------------------------------------------------------------------
