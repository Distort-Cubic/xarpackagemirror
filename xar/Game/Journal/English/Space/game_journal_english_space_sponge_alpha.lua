--File: game_journal_english_space_sponge_alpha.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is an ^x00ff00Alpha Menger Sponge^!. \n\n"
        .. "This blue ring device will embed you deep into this sponge.\n\n"
        .. "You cannot escape easily without a waypoint "
        .. "when you are smaller because there are invisible walls "
        .. "surrounding the cube when you shrink."
    game_journal.add_txt(lang, "SPONGE1", str)
    game_journal.add_path("@area;@area_space;@area_space_lev_2;{20}Alpha menger sponge")
end

-------------------------------------------------------------------------------
