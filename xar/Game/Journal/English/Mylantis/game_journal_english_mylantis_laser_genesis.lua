--File: game_journal_english_mylantis_laser_genesis.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^x00ff00 The Laser Genesis Planet^!. "
        .. "There is only one of these in the universe.\n\n"
        .. "^xff0000You need a Laser Genesis Key "
        .. "to go beneath the surface.^!\n\n"
        .. "When you get such a key and enter, you will find "
        .. "dungeons which each hold the same ^xff00ffsuper upgrade^!: "
        .. "the upgrade to multiply the damage "
        .. "of your Laser gun by a factor.\n\n"
        .. "That is, your Laser damage is "
        .. "equal to factor1 times factor2. "
        .. "At the beginning of the game, "
        .. "factor1 = 8 and factor2 = 1. "
        .. "When you pick up an ordinary Laser Damage upgrade, "
        .. "this will increase factor1 by 2. "
        .. "However the super upgrade in these dungeons will "
        .. "increase factor2 by 1."
    game_journal.add_txt(lang, "LASER_GENESIS_WP", str)
    game_journal.add_path("@area;@area_my;@area_my_lasergen;{10}Overview")

    local str = "Message from Altair:\n\n"
        .. "^x0000ffRe-Creation technology is the key to building our world. "
        .. "I used this to create the most modern version of the Railgun. "
        .. "Within this planet, the Laser Genesis Planet, scientists "
        .. "use the Re-Creation technology to improve the Laser weapon beyond "
        .. "normal standards.\n\n"
        .. "However the most horrific weapon created using Re-Creation technology "
        .. "was the Chekhov Grenade Launcher. "
        .. "Pray we never see it again. "
    game_journal.add_txt(lang, "LASER_GENESIS_KEY_GUARD_TREASURE", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_wep;@lore_random_wep_laser")
    game_journal.add_path("@lore;@lore_random;@lore_random_wep;@lore_random_wep_chekhov")
end

-------------------------------------------------------------------------------
