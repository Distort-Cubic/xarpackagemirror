--File: game_journal_english_yw_slow_exit.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    --Genesis only.
    local str = "^xff00ffIs it too hard to find the exit of "
        .. "this maze? There is another way out of the Ying World:\n\n"
        .. "Go into a Ying Cave Island (a small 3x3 island floating "
        .. "around the larger islands). "
        .. "Shrink into the caves and in the air "
        .. "go to a blue cube. There is a flower whose center contains "
        .. "a fragment of the universe that exists outside of the Ying World. "
    game_journal.add_txt(lang, "YW_SLOW_EXIT_1", str)
    --Keeping it non-recordable, because it is genesis only.

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Here are two places you should visit to help understand "
        .. "the layout of the world:\n\n"
        .. "1) Richmond Cities (in the Tau Caves).  And when you go into such a city, "
        .. "go into a Tau Cave Map Room, which is at the top of a building "
        .. "with a question mark.\n\n"
        .. "2) A Stoney Sanctuary.  These are inside the Yellow Cubes "
        .. "which you can find in Stoney Air. "
        .. "You must be small enough to enter a Yellow Cube. "
    game_journal.add_txt(lang, "YW_SLOW_EXIT_TREASURE_k", str)
    game_journal.add_path("@quest;@quest_yw;{20}After leaving the ying world")
end

-------------------------------------------------------------------------------
