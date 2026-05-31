--File: game_journal_english_hell_credits.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "ENDING_WP_ROOM_key",
        p.ENDING_WP_ROOM_key)
    game_journal.add_path("@area;@area_hell;@area_hell_key;{10}Use this key to unlock areas")
    game_journal.add_path("@quest;@quest_hell;@quest_hell_key;{10}Use this key in the mylantis top garden")

    local str = "Want to play on a harder mode? "
        .. "During the first 5 minutes of a new game "
        .. "you can go to MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> "
        .. "DIFFICULTY -> HARDER MODE.  Switching to a harder mode requires "
        .. "a password."
    game_journal.add_txt(lang, "ENDING_DIFF_NORMAL_part1", str)
    game_journal.add_path("@basic;@basic_diff;{50}How to switch to a harder mode")

    local str = "The next hardest after Normal Mode is ^x00ff00Gateway Mode^! "
        .. "(the 1st hard mode).\n\n"
        .. "The password to use this is the following:\n\n^x00ff00icandoit^!\n\n"
        .. "^xff0000The consensus is that Gateway and all harder difficulties "
        .. "are very hard and you have to know many secrets to proceed. "
        .. "Exploring all areas on Gateway and harder difficulties is not "
        .. "feasible: the goal is just to reach the ending. "
        .. "You probably need a very strong EMP.\n\n"
        .. "My best time for a speedrun on Gateway difficulty is "
        .. "a bit under 10 hours."
    game_journal.add_txt(lang, "ENDING_DIFF_NORMAL_part2", str)
    game_journal.add_path("@basic;@basic_diff;{60}Gateway mode password")

    local str = "The password to the 2nd hard difficulty "
        .. "(^xff0000Quagmire Mode^!) is the following: "
        .. "it is all lowercase, 9 letters, 2 words, no spaces. "
        .. "It is the name of the anime series where "
        .. "there are mutants with extra invisible arms.\n\n"
        .. "Only try this difficulty if you have already beat the "
        .. "game on the Gateway Mode difficulty."
    game_journal.add_txt(lang, "ENDING_DIFF_HARD_1", str)
    game_journal.add_path("@basic;@basic_diff;{70}Quagmire mode password hint")

    local str = "The password to the 3rd hard difficulty "
        .. "(^xff0000Agony Mode^!) is the following: "
        .. "it is all lowercase, 13 letters, 2 words, no spaces. "
        .. "It is the name of the \"engine\" that the humans create "
        .. "that is designed after an angel's core "
        .. "(in the show Neon Genesis Evangelion)."
    game_journal.add_txt(lang, "ENDING_DIFF_HARD_2", str)
    game_journal.add_path("@basic;@basic_diff;{80}Agony mode password hint")

    local str = "The password to the 4th hard difficulty "
        .. "(^xff0000Caustic Utopia Mode^!) is the following: "
        .. "it is all lowercase, 5 letters, 1 word. "
        .. "It is what Jen is surprised that Kira has "
        .. "(in the movie The Dark Crystal)."
    game_journal.add_txt(lang, "ENDING_DIFF_HARD_3_caustic_utopia", str)
    game_journal.add_path("@basic;@basic_diff;{90}Caustic utopia mode password hint")
    --{100} is reserved for madness mode.

    local str = "Note: If you enter the password ^xff00ffpeace^!, "
        .. "then it will show your kill count. "
        .. "You get an achievement if you win the game "
        .. "but kill at most 99 enemies!"
    game_journal.add_txt(lang, "ENDING_DIFF_HARD_3_pacifist", str)
    game_journal.add_path("@basic;@basic_diff;{110}Pacifist mode password")
end

function p.ENDING_WP_ROOM_key(chunk_id)
    --Ignoring chunk_id.
    local str = "Congratulations on getting past an Inner Core!\n\n"
        .. "^x00ff00YOU WIN THE GAME!!!^!\n\n";
    if( not game_genesis.enabled() ) then
        str = str .. "As a post-game reward, here is an upgrade "
            .. " to help your armor regenerate.\n\n";
    end
    str = str .. "Want to keep playing?\n\n"
        .. "^xff00ffThe Key to the Universe allows you to reach advanced areas. "
        .. "One very important such area is at the very top of the Mylantis Top City. ";
    return str
end
    

-------------------------------------------------------------------------------
