--File: game_journal_english_bur_tower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "BURLINGTON_COLS_AIR_MAP_part1",
        p.BURLINGTON_COLS_AIR_MAP_part1)
    game_journal.add_path("@area;@area_bur;@area_bur_cavern;{10}Overview")

    local str = "Halfway up some of these giant white columns "
        .. "you can find the cities of ^x00ff00Burlington^!. "
        .. "These cities are carved out of the stone of the columns. "
        .. "You can see them in the distance as caves above blue cubes. "
        .. "They are architectural wonders.\n\n"
        .. "Each such city has a central tower with rare treasure.\n\n"
        .. "The city also contains many buildings that become infinitely smaller. "
        .. "Legend says that a secret is locked away deep "
        .. "in the inner space of these cities. "
        .. "The secret is locked by the ^xff00ffBurlington City Combination Lock^!: "
        .. "look for the Omega symbol.\n\n"
        .. "And finally, each city has a garden grown by Tegan."
    game_journal.add_txt(lang, "BURLINGTON_COLS_AIR_MAP_part2", str)
    game_journal.add_path("@area;@area_bur;@area_bur_gen;{10}Overview version 1")

    local str = "Message from Betelgeuse:\n\n"
        .. "^x0000ffWe are trying to form a community of folks "
        .. "in the Burlington area who are interested in hell stuff.\n\n"
        .. "With the permission of ^x00ff00Club Green Apple^x0000ff, "
        .. "I placed a ^xff0000portal to hell^!"
        .. "^x0000ff at the bottom of the inverted pyramid "
        .. "of their club. "
        .. "It is hidden: you need to shrink using an Apple Tree and go to "
        .. "the very middle bottom of the inverted pyramid."
    game_journal.add_txt(lang, "BURLINGTON_TEGAN_GARDEN_SECRET", str)
    game_journal.add_path("@area;@area_bur;@area_bur_apple;{20}Secret entrance to hell")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "A concern of the existence of a hierarchical world "
        .. "(like this Fractal Block World) is that it is "
        .. "capable of performing very large scale "
        .. "COMPUTER COMPUTATIONS.\n\n"
        .. "One aspect of why this is problematic is that "
        .. "consciousness may be spawned in the process of the "
        .. "computation."
    game_journal.add_txt(lang, "BURLINGTON_APPLE_CLUB_WP_k_part1", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_comp;{10}Part 1")

    local str = "^x00ff00People in a non-hierarchical world "
        .. "can ask their calculators for the "
        .. "square root of 57 without fear of this query "
        .. "creating and then immediately destroying "
        .. "conscious minds.\n\n"
        .. "I think if this universe is good (as opposed to evil), "
        .. "all computations are recorded by an external system "
        .. "so that they can be \"replayed\" later, "
        .. "like rewatching a movie."
    game_journal.add_txt(lang, "BURLINGTON_APPLE_CLUB_WP_k_part2", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_comp;{20}Part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "As I mentioned elsewhere, a concern of the "
        .. "existence of the Fractal Block World "
        .. "is that it may be "
        .. "capable of performing very large scale "
        .. "^xff0000COMPUTER COMPUTATIONS^x00ff00.\n\n"
        .. "A massive computer computation could forge the ultimate "
        .. "virus of the mind, or instructions for how to create "
        .. "an armageddon device.\n\n"
        .. "So if there is some way to pass information "
        .. "from a fractal world to an ordinary (flat) world, "
        .. "even if this allows for the passage of useful information, "
        .. "it also allows for the transfer of "
        .. "highly dangerous information."
    game_journal.add_txt(lang, "BURLINGTON_APPLE_CLUB_HELL_FRIEND", str)
end

function p.BURLINGTON_COLS_AIR_MAP_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "You are in a ^x00ff00Great White Cavern^!.\n\n"
        .. "In the giant white columns there are blue holes which lead to "
        .. "^x00ff00Rail Showdown Caves^!. "
    if( not game_genesis.enabled() ) then
        str = str .. "There you can get significant Railgun upgrades.\n\n"
            .. "Note that you are given infinite weapon ammo when you enter, "
            .. "but all this ammo is removed (by a White Box Device) when you leave."
    end
    return str
end

-------------------------------------------------------------------------------
