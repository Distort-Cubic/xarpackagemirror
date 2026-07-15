--File: game_journal_english_i3_jackfruit.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "JACKFRUIT", p.JACKFRUIT)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_jack;{10}Overview")

    local str = "Message from Proxima Centauri:\n\n"
        .. "^x0000ffInner Botany Theory has a healing aspect.\n\n"
        .. "If an advisory has used Re-Creation technology "
        .. "to change the universe into a hostile world, "
        .. "we can use Inner Botany Theory "
        .. "to reconstruct the canonical core (the Inner Core) "
        .. "of that universe, and then reboot "
        .. "(using Re-Creation theory) the world "
        .. "into a habitable world."
    game_journal.add_txt(lang, "JACKFRUIT_AIR_TREASURE_part1", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wep;@lore_ib_wep_lose;{10}Part 1")

    local str = "^x0000ffIn situations where the advisory's Re-Creation "
        .. "theory outpaces our Inner Botany Theory, "
        .. "the rebooting process loses resources.\n\n"
        .. "That is, if we cannot construct the full canonical core "
        .. "of the advisory's universe but instead we can only construct "
        .. "a fragment of the core, we lose data.\n\n"
        .. "The data we lose is not exactly finite in nature "
        .. "but more transfinite."
    game_journal.add_txt(lang, "JACKFRUIT_AIR_TREASURE_part2", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wep;@lore_ib_wep_lose;{20}Part 2")
end

function p.JACKFRUIT(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Jackfruit^!.\n\n"
        .. "^xff0000You need to have a strong EMP for this area to be effective.^! \n\n"
        .. "Inside you can find\n"
        .. "1) ^xffffffSmall White Flowers^!\n"
        .. "2) ^xffffffLarge White Flowers^!\n"
        .. "3) ^x00ff00Small Black Flowers^!\n"
        .. "4) ^x00ff00I3 WIG Flowers^!"
    if( not game_genesis.enabled() ) then
        str = str .. "\n5) Rocket ammo\n"
            .. "6) Plasma Damage upgrades";
    end
    return str
end

-------------------------------------------------------------------------------
