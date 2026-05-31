--File: game_journal_english.lua

-------------------------------------------------------------------------------
--It makes sense to put text boxes into two categories:
--1) recordable text boxes.
--   When you open such a text box, the text is put in your journal
--   (assuming you have a journal) so you can read it later when your body
--   is at any location.
--2) not-recordable text boxes.
--   These are NOT saved to your journal when you open such a text box.
--   Often the text depends on the location (the chunk_id)
--   and it might be impossible to read it elsewhere in the world.
--Recordable text boxes should be possible to specify as a plain old string
--(although there are exceptions, such as text that depends on whether or not
--genesis mode is enabled). Text boxes that cannot be specified by
--plain old strings are specified by callback functions which take a chunk_id
--as an argument (and the function returns a string).
--
--It makes sense to prioritize recordable text boxes
--over not-recordable text boxes when it comes to converting from C++ to Lua.
--
--Original total number of C++ text boxes: 2092 (holy crap).
--Current total number of C++ text boxes: 982.
--Number of C++ text boxes not yet marked as not-recordable: 41. (Ideal value: zero).
--Number of C++ text boxes marked as not-recordable: 941.
--
--Areas where ALL recordable text boxes have been
--converted from C++ to Lua: Ying World, Midway, I1, I2, I3, Mylantis, NWP.
--Areas that are almost done:
--  Burlington (5 to go)
--  Space (11 to go)
--  Bulk (20 to go)
--  Hell (5 to go).
-------------------------------------------------------------------------------

--Note: The logic here is wrong.
--Instead, game_journal should have the "is initialized" bool.
--That system will set it to true once all loading is done.
--That is needed because eventually we might want to do async loading.
-- local initialized = false

function p.__load_game_early()
    game_journal.reg_load_cb("main_english", p.load_game_cb)
end

function p.load_game_cb()
    --We do not want to re-initialized during
    --a soft load (for speed).
    -- if( initialized ) then return end
    -- initialized = true --Logic is not right.  See comment above.

    --We only reload during a "hard" load
    --(or if the package changes).

    ga_print("game_journal_english.__load_game begin")

    --Potentially slow.
    --Might want to add the text over several frames
    --using callback functions.
    p.main()

    ga_print("game_journal_english.__load_game end")
end

function p.main()
    game_journal_english_alias.main()
    --
    game_journal_english_yw.main()
    game_journal_english_mid.main()
    game_journal_english_i1.main()
    game_journal_english_i2.main()
    game_journal_english_i3.main()
    game_journal_english_bur.main()
    game_journal_english_space.main()
    game_journal_english_mylantis.main()
    game_journal_english_hell.main()
    game_journal_english_nwp.main()
    game_journal_english_common.main()
    --more!!!
end
