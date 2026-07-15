--File: game_journal_english_nwp_small_black_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "What is ^xff00ffInner Botany Theory^!^x00ff00? "
        .. "That is one of the first questions I asked myself "
        .. "when I entered this place.\n\n"
        .. "On the surface it is the study of inner space. "
        .. "For example the classification of flowers "
        .. "based on what each flower contains in its core. "
        .. "A Jumbo Yellow Flower contains 5 Small Yellow Flowers in its core, "
        .. "etc."
    game_journal.add_txt(lang, "SMALL_WHITE_FLOWER_TREASURE_k_part1", str)
    game_journal.add_path("@lore;@lore_ib;{20}What is inner botany theory?;{10}Part 1")

    local str = "^x00ff00But delving a bit deeper, Inner Botany Theory "
        .. "is concerned with objects called ^xff00ffInner Cores^!^x00ff00 "
        .. "which allegedly exist deep inside inner space.\n\n"
        .. "The main question is: ^xff00ffAre Inner Cores necessary "
        .. "for existence?^!\n\n"
        .. "^x00ff00Evidence for an affirmative answer to this is that "
        .. "universes created in labs are always eventually confirmed "
        .. "to contain Inner Cores: a painstaking verification "
        .. "carried out by generations of Inner Botanists."
    game_journal.add_txt(lang, "SMALL_WHITE_FLOWER_TREASURE_k_part2", str)
    game_journal.add_path("@lore;@lore_ib;{20}What is inner botany theory?;{20}Part 2")
end

-------------------------------------------------------------------------------
