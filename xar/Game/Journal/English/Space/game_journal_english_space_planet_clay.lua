--File: game_journal_english_space_planet_clay.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "SPACE_PLANET_CLAY_MOD_WP3",
        p.SPACE_PLANET_CLAY_MOD_WP3)
    game_journal.add_path("@area;@area_space;@area_space_planet;@area_space_planet_clay;{10}Overview")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I first moved to work at the Inner Mechanization Agency, "
        .. "I went to a thrift store. "
        .. "I remember you and I went to one in college "
        .. "when we finished early one day at the Fractal Labs.\n\n"
        .. "I bought myself a purple pen. "
        .. "My lucky purple pen. "
        .. "The color matches my eyes. "
        .. "I just knew you would have bought "
        .. "me something like this if I had moved out west with you."
    game_journal.add_txt(lang, "PLANET_CLAY_MAZE_MAJOR_TREASURE", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_pen")
end

function p.SPACE_PLANET_CLAY_MOD_WP3(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Clay Planet^!.\n\n"
        .. "If you shrink and go through the plugs in the ground "
        .. "you can enter the giant maze inside the planet. "
        .. "There are hundreds of 7x7x7 mazes, where two adjacent ones "
        .. "are connected by 4 corridors.  At the bottom of this planet is a "
        .. "giant cavern with 6 thousand gold and \"extra\" treasure. "
        .. "If you just keep going down, you will eventually reach it. "
    if( game_genesis.enabled() ) then
        str = str .. "There are also smaller cavities.\n\n"
    else
        str = str .. "There are also smaller cavities with Minigun Damage upgrades.\n\n"
    end
    str = str .. "^xff0000Reaching the the giant cavern takes a long time.^!"
    return str
end

-------------------------------------------------------------------------------
