--File: game_journal_english_space_moon_gamma.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "SPACE_MOON_GAMMA_MOD_WP2",
        p.SPACE_MOON_GAMMA_MOD_WP2)
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_gamma;{10}Overview")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Looking at the stars can be scary when I feel small. "
        .. "The vastness of space makes me feel even smaller. "
        .. "As my moods go up and down, it feels like the universe "
        .. "stays the same size but I change size.\n\n"
        .. "When I truly acknowledge the size of the universe, "
        .. "I realize it is crazy to think I am large in comparison.\n\n"
        .. "If it was true that I am close in size to the full universe, "
        .. "then there would be so many mysteries about me."
    game_journal.add_txt(lang, "SPACE_MOON_GAMMA_NUKE_AMMO_2_k", str)
    game_journal.add_path("@lore;@lore_phil;{20}The universe stays the same size but I change size")
end

function p.SPACE_MOON_GAMMA_MOD_WP2(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Gamma Moon^!! \n\n"
    if( game_genesis.enabled() ) then
        str = str .. "The core of this moon is interesting."
    else
        str = str .. "When you go beneath the surface, you will find tunnels "
            .. "and sporadic ^x00ff00Laser Damage^! upgrades.\n\n"
            .. "In the center of the planet is a cavern with tunnels through the air. "
            .. "Different Gamma Moons contain different Nuke upgrades at their centers. "
            .. "In the very center of the core is a box of 25 nukes."
    end
    return str
end

-------------------------------------------------------------------------------
