--File: game_journal_english_mid_orange.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from SN1987A: \n\n"
        .. "^x0000ffWhile exploring inner space, I discovered a "
        .. "remarkable object: an Infinity Flower. "
        .. "It has complex inner structure. "
        .. "Furthermore, I believe that it contains an Inner Core.^!"
    game_journal.add_txt(lang, "ORANGE_OUTER_CRUST_SAFEHOUSE_part1", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_i1;@lore_area_i1_bot;{10}Creation of the lab;{10}Part 1")

    local str = "^x0000ffI have designed a Botany Lab to "
        .. "further explore this Infinity Flower. "
        .. "For safety, I am surrounding the lab by a Blue Bubble to contain any "
        .. "contamination that may escape from the lab. \n\n"
        .. "I have just submitted a request to a third level engineer "
        .. "to insert my code for the Botany Lab into the code for an Orange. "
        .. "This should make my lab sufficiently available, "
        .. "while at the same time the outer crust of the Orange "
        .. "should hide it from unsuspecting explorers. \n\n"
        .. "I am requesting that this message be inserted "
        .. "into the code of an Orange.^!"
    game_journal.add_txt(lang, "ORANGE_OUTER_CRUST_SAFEHOUSE_part2", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_i1;@lore_area_i1_bot;{10}Creation of the lab;{20}Part 2")
end

-------------------------------------------------------------------------------
