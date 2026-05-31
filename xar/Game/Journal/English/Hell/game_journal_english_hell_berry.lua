--File: game_journal_english_hell_berry.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00The Inner Core will kill you within seconds "
        .. "unless you are invulnerable.\n\n"
        .. "There are invulnerability powerups inside Rainbow Flowers. "
        .. "These will keep you safe for a few seconds. "
        .. "You will probably have to \"stack\" these "
        .. "(collect multiple of them).\n\n"
        .. "You can read about Rainbow Flowers and how to "
        .. "\"chain them together\" to stack up the "
        .. "invulnerability Powerups in the I2 Library."
    game_journal.add_txt(lang, "HELLBERRY_SEED_ENTRANCE_3_genesis", str)
    game_journal.add_path("@mon;@mon_ic;{10}You need invulnerability powerups") --Genesis only.

    local str = "There is an ^xff0000INNER CORE^! inside, "
        .. "but you already know all about those.\n\n"
        .. "However this Hell Flower is different because "
        .. "you need the key below to open the Inner Core's "
        .. "central lair.\n\n"
        .. "I can think of at least two ways of opening the "
        .. "door: 1) a fast way and 2) a slow and tricky way."
    game_journal.add_txt(lang, "HELLBERRY_OUTER_alt", str)
    --Don't need to put this in the journal.
end

-------------------------------------------------------------------------------
