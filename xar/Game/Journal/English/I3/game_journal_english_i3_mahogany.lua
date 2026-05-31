--File: game_journal_english_i3_mahogany.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are on the inside of a ^x00ff00Mahogany Tree^!. "
        .. "There are Nuke-class monsters in this area. "
        .. "These monsters will all drop the same thing, "
        .. "and what they drop depends on the tree.\n\n"
        .. "Here are the possibilities of what they drop:\n\n"
        .. "1) Nuke Damage Upgrade\n"
        .. "2) Nuke Velocity Upgrade\n"
        .. "3) Nuke Max Ammo Upgrade\n"
        .. "4) Nuke Radius Upgrade."
    game_journal.add_txt(lang, "MAHOGANY_INSIDE_TOWN", str)
    game_journal.add_path("@area;@area_i3;@area_i3_main_forest;@area_i3_main_forest_mah;{10}Overview")
end

-------------------------------------------------------------------------------
