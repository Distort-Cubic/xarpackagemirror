--File: game_journal_english_mid_tweed.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^x00ff00Tweedle-Dee Air^!.\n\n"
        .. "This air contains Laser Forts, Noob Mazes, "
        .. "Tweedle-Dee Caves, and Tweedle Haunted Houses.\n\n"
        .. "If you shrink in this air, you will enter "
        .. "Tweedle-Dum Air.\n\n"
        .. "Enlarging in either Tweedle-Dum or Tweedle-Dee air is "
        .. "essentially impossible."
    game_journal.add_txt(lang, "TAU_CAVE_AIR_TWEED_DEE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tweed;{10}Overview")

    local str = "This is a ^x00ff00Tweedle-Dum Air Base^!.\n\n"
        .. "If you go outside into the surrounding air (Tweedle-Dum Air) "
        .. "and shrink, you will enter Tweedle-Dee Air.\n\n"
        .. "Tweedle-Dee air contains ^x0000ffLaser Forts^!, "
        .. "^x0000ffTweedle-Dee Caves^!, and ^x0000ffTweedle Haunted Houses^!.\n\n"
        .. "If you shrink in Tweedle-Dee Air you will enter back into "
        .. "Tweedle-Dum Air.\n\n"
        .. "Enlarging in either Tweedle-Dum or Tweedle-Dee air is "
        .. "essentially impossible."
    game_journal.add_txt(lang, "TAU_CAVE_AIR_TWEED_DUM_BASE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tweed;{20}Base")
end

-------------------------------------------------------------------------------
