--File: game_journal_english_i2_weed_rings.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "These are ^x00ff00Weed Rings^!.\n\n"
        .. "If you make it to the center island you "
        .. "will find treasure.\n\n"
        .. "Between the rings are lots of monsters "
        .. "in the air. However you can safely travel "
        .. "from one ring to another by going through "
        .. "covered bridges.\n\n"
        .. "In the trunks of the brown trees you can "
        .. "sometimes find EMP Cities."
    game_journal.add_txt(lang, "WEED_RINGS", str)
    game_journal.add_path("@area;@area_i2;@area_i2_weedrings")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Using the piece of paper I stole from work "
        .. "from the bulletin board, I tried to search "
        .. "for the extra 7 floors of the "
        .. "Inner Mechanization Agency in my apartment "
        .. "by having my mind enter the hidden "
        .. "world (Xar). I was not successful.\n\n"
        .. "I decided that when I went to work, "
        .. "during lunch my mind would enter Xar "
        .. "and my body would search for the extra floors."
    game_journal.add_txt(lang, "WEED_RINGS_TREASURE_CHUNK_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_floorsearch;{10}Using the yin yang paper to search;{10}Part 1")

    local str = "^x00ff00I was in another part of the building that I was "
        .. "not authorized to be in. "
        .. "I passed someone and as I walked by him, "
        .. "I glanced at his eyes. "
        .. "At the instant I did he looked back at me. "
        .. "In the pupil of his eye, I saw "
        .. "^xff00ffSagittarius A*^x00ff00.\n\n"
        .. "Maybe the body of the man was not Sagittarius A*, "
        .. "but at the very least his pupil was a camera "
        .. "that was sending a signal to a TV monitor in a "
        .. "huge spherical room with a billion monitors on the walls, "
        .. "with a huge black sphere in the middle of the room.\n\n"
        .. "Do you ever notice that the pupil of an eye looks "
        .. "just like the black lens of a camera, "
        .. "which in turn looks like a black hole? "
        .. "Of course you know that, you are smart."
    game_journal.add_txt(lang, "WEED_RINGS_TREASURE_CHUNK_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_floorsearch;{10}Using the yin yang paper to search;{20}Part 2")
end

-------------------------------------------------------------------------------
