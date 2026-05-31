--File: game_journal_english_i3_aladdin_cave.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^x00ff00Aladdin's Cave^!.\n\n"
        .. "Below is a 6x6x6 maze.\n\n"
        .. "^x00ff00The treasure room has 8 thousand gold.^!"
    game_journal.add_txt(lang, "ALADDIN_CAVE_ABOVE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_desert;@area_i3_desert_aladdin")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I was sick, I tried to go back to my office but the "
        .. "retinal scanners rejected me.\n\n"
        .. "I went to the front desk. "
        .. "Sitting behind the desk was a woman with thick glasses with acne "
        .. "and a man with no glasses and clear skin.\n\n"
        .. "What a perfect image of the face of the Inner Mechanization Agency: "
        .. "the hidden world and the visible world.\n\n"
        .. "Needless to say, they could not help me with my access problem."
    game_journal.add_txt(lang, "ALADDIN_CAVE_TREASURE", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_rejected")
end

-------------------------------------------------------------------------------
