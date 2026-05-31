--File: game_journal_english_yw_stable_sing.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    p.cheating_password()

    game_journal.add_txt_cb(lang, "bur_city_combo_cb", p.bur_city_combo_cb)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{20}The combination itself") --Change num
    game_journal.add_path("@area;@area_bur;@area_bur_combo;{10}The combination itself") --Change num
end

function p.cheating_password()
    local str = "^xff00ffYou can enable cheat codes by pressing ~ to open the console "
        .. "and then entering \"cheat PASSWORD\".\n\n"
        .. "The password is 13 letters, "
        .. "5 words, no spaces, and all lowercase.\n\n"
        .. "Clues for this 13 letter password can be found throughout the world.\n\n"
        .. "To disable the ability to enter new cheat codes, enter the command \"cheat off\". "
    game_journal.add_txt(lang, "cheat_password_overview", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{10}Overview")

    local str = "^xff00ffTo use cheat codes, you enter the command \"cheat PASSWORD\" "
        .. "into the console. "
        .. "The password is 13 letters.\n\n"
        .. "The letters 1-3 are \"hod\"."
    game_journal.add_txt(lang, "cheat_password_1_to_3", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{20}Letters 1 to 3")

    local str = "^xff00ffTo use cheat codes, you enter the command \"cheat PASSWORD\" "
        .. "into the console. "
        .. "The password is 13 letters.\n\n"
        .. "The letters 4-5 are \"is\"."
    game_journal.add_txt(lang, "cheat_password_4_to_5", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{30}Letters 4 to 5")

    local str = "^xff00ffTo use cheat codes, you enter the command \"cheat PASSWORD\" "
        .. "into the console. "
        .. "The password is 13 letters.\n\n"
        .. "The letters 6-10 are \"close\"."
    game_journal.add_txt(lang, "cheat_password_6_to_10", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{40}Letters 6 to 10")

    local str = "^xff00ffTo use cheat codes, you enter the command \"cheat PASSWORD\" "
        .. "into the console. "
        .. "The password is 13 letters.\n\n"
        .. "The letters 11-12 are \"to\"."
    game_journal.add_txt(lang, "cheat_password_11_to_12", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{50}Letters 11 to 12")

    local str = "^xff00ffTo use cheat codes, you enter the command \"cheat PASSWORD\" "
        .. "into the console. "
        .. "The password is 13 letters.\n\n"
        .. "The 13th letter is \"v\". "
    game_journal.add_txt(lang, "cheat_password_13", str)
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{60}Letters 13")

    local str = "^xff00ffThe 13 letter password to use "
        .. "cheatcodes in this game is the following:\n\n"
        .. "\"hodisclosetov\"."
    game_journal.add_txt(lang, "cheat_password_full", str)
    -- game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{70}^xff00ffFull password^!") --Get color codes to work!!!
    game_journal.add_path("@prog;@prog_cheat;@prog_cheat_password;{70}Full password")
end

function p.bur_city_combo_cb()
    -- local combo_str = p.get_bur_city_combo_str() --Bad (do not duplicate code).
    local combo_str = ga_get_s("xar.bur_city_combo") --Good (getting info from C++ worldgen).
    local str = "^xff00ffThe combination for the \"Burlington City Lock\" is:\n\n"
        .. combo_str
    return str
end

--Bad (do not duplicate code).
--It would be good to create something called the "common API" (ca_)
--which can be called from both the Game Lua state and the
--Chunk Generation Lua state.
--At the same time, create a folder of "common Lua scripts"
--which can use this API and which are loaded into both
--the Game Lua state and the Chunk Generation Lua state.
--This function could be put in that.
-- function p.get_bur_city_combo_str()
--     local world_seed = ga_get_sys_i("game.package.seed")
--     if( world_seed == 0 ) then return "1232213" end
--     local seed = world_seed * 77777 + 54873
--     ga_srand(seed)
--     local str = ""
--     for i = 1,6 do
--         local num = ga_randi(1,3)
--         str = str .. tostring(num)
--     end
--     str = str .. "3"
--     return str
-- end

-------------------------------------------------------------------------------
