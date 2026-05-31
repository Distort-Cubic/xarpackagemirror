--File: game_journal_english_nwp_sponge_pure.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Menger Sponge^! (or something very similar). \n\n"
        .. "There are no monsters here (but there is some gold). "
        .. "This is merely a place to let your mind wander. "
        .. "To leave you must be the size you are now. "
        .. "Beware that when you shrink, you may become too deep to come out "
        .. "and you may need to ^x00ff00RESPAWN^! with "
        .. "MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> RESPAWN.\n\n"
        .. "These ^x0000ffBlue Rings^! will bring you deep into the sponge.\n\n"
        .. "Using ^xff00ffPink Rings^! will bring you back to this spot."
    game_journal.add_txt(lang, "SPONGE_PURE", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_sponge;{10}Pure sponge")
end

-------------------------------------------------------------------------------
