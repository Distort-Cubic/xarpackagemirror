--File: game_journal_english_yw_stable_sing.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "The ^x00ff00Hell Flower^! "
        .. "here is extremely special.\n\n"
        .. "Somewhere inside is a weapon mode for your Dark Hole Gun:\n\n"
        .. "the ^xff0000Quasar Drive^!.\n\n"
        .. "^xff00ffThere is also a special key which unlocks a secret door.^!"
    game_journal.add_txt(lang, "STABLE_SING_SECRET_4", str)
    game_journal.add_path("@area;@area_yw;@area_yw_tut;@area_yw_tut_emer;{10}Secret hell flower")
end

-------------------------------------------------------------------------------
