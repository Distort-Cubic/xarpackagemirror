--File: game_journal_english_space_planet_modules.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "SPACE_PLANET_MOD_ORANGE2",
        p.SPACE_PLANET_MOD_ORANGE2)
    game_journal.add_path("@lore;@lore_area;@lore_area_mb;{20}Oranges on moons")
end

function p.SPACE_PLANET_MOD_ORANGE2(chunk_id)
    --Ignoring chunk_id.
    local str = "Message from SN1987A:\n\n"
        .. "^x0000ffAs an inner botanist (inner botany theorist), "
        .. "it is my job to know which plants contain the deepest "
        .. "known depths of inner space. "
        .. "Some of these plants are very delicate and can only exist "
        .. "in certain places.\n\n"
        .. "The Main Branch is the canonical labeled path to the level of "
        .. "inner space that contains Inner Cores. "
        .. "You can enter the Main Branch by going inside an Orange.\n\n"
        .. "Oranges are being grown inside greenhouses on the surfaces of moons "
        .. "(for example Gamma Moons).\n\n"
        .. "My colleagues have created \"Orange Flowers\" which can grow in more places "
        .. "than oranges.  Inside an Orange Flower is an Orange. ";
    if( not game_genesis.enabled() ) then
        str = str .. "The downside is that going inside an Orange Flower to reach the Orange within "
            .. "requires going through a hard battle. ";
    end
    return str
end

-------------------------------------------------------------------------------
