--File: game_journal_english_mylantis_great_cavern.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xffffffThere is a game difficulty harder than caustic utopia. "
        .. "The password is the sentence the narrator says after "
        .. "\"to demand details from the emperor\" from the 1984 movie Dune.\n\n"
        .. "4 words, 16 letters, no spaces."
    game_journal.add_txt(lang, "MYLANTIS_GREAT_CAVERN_BIG_BOAT_WP", str)
    game_journal.add_path("@basic;@basic_diff;{100}Madness mode password hint")

    game_journal.add_txt_cb(lang, "MYLANTIS_GREAT_CAVERN_SMALL_BOAT_WP_overview",
        p.MYLANTIS_GREAT_CAVERN_SMALL_BOAT_WP_overview)
    game_journal.add_path("@area;@area_my;@area_my_caves;@area_my_caves_cavern;{10}Overview")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffListen up young one and listen to the tale "
        .. "of when I used to go fishing! "
        .. "Me and my friends would go to The Great Mylantis Cavern "
        .. "and fish for Trolls. Back then Trolls seemed really large. "
        .. "I suppose my perception changed over time.\n\n"
        .. "When I went fishing when I was young, "
        .. "The Mount P had not yet been constructed.\n\n"
        .. "Even now that I am so much older, I can still catch my mind "
        .. "wandering to the deck of a smaller boat with a fishing pole, "
        .. "trying to catch some Trolls."
    game_journal.add_txt(lang, "MYLANTIS_GREAT_CAVERN_SMALL_BOAT_WP_rigel", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_rigel;{30}Gone fishin")
end

function p.MYLANTIS_GREAT_CAVERN_SMALL_BOAT_WP_overview(chunk_id)
    --Ignoring chunk_id
    local str = "This is ^x00ff00The Great Mylantis Cavern^!.\n\n"
        .. "It is a great place to go fishing!\n\n"
        .. "Below are the ^x00ff00Red Caves of Mylantis^!. ";
    if( not game_genesis.enabled() ) then
        str = str .. "There you can find Homing upgrades. "
            .. "The deeper you go, the more upgrades you will find."
    end
    return str
end

-------------------------------------------------------------------------------
