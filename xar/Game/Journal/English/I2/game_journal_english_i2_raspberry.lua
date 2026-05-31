--File: game_journal_english_i2_raspberry.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from TON 618:\n\n"
        .. "^x0000ffI added a shortcut! ^xff00ffHere is a lesser known "
        .. "way to escape from a Ying Flower^x0000ff. "
        .. "You exit the \"shell layers\" until "
        .. "you are in a giant gray room with a green island. "
        .. "The green island has a pit with a gray tower. "
        .. "At the bottom of the gray tower, the walls are "
        .. "actually made of cement, which you can enter "
        .. "if you are small enough. "
        .. "Inside the tower, once you get past the cement walls, "
        .. "is a Pink Ring Device allowing you to exit the Ying Flower."
    game_journal.add_txt(lang, "RASPBERRY_TREASURE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_rasp;{10}Secret hint about ying flowers")
    --Don't need to crosslist on the ying world part of the journal
    --because by this point they are out of the ying world/
end

-------------------------------------------------------------------------------
