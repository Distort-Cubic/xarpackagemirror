--File: game_journal_english_i2_rad_caves.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Inside are the "
        .. "^x00ff00Nuke Radius Caves^!.\n\n"
        .. "Inside you can find the following:\n\n"
        .. "1) ^x00ff00Nuke Radius Upgrades^!\n\n"
        .. "2) entrances to I3 (^x00ff00I3 WIG Flowers^!)."
    game_journal.add_txt(lang, "NUKE_RADIUS_CAVES_CONTAINER", str)
    game_journal.add_path("@area;@area_i2;@area_i2_lattice;@area_i2_lattice_radcaves;{10}Version 1")

    local str = "This is the ^xff00ffalternate version^! of the "
        .. "^x00ff00Nuke Radius Caves^!. "
        .. "It is much quicker to enter than the normal version. "
        .. "Inside you can find nukes.\n\n"
        .. "Note that in the normal version of the Nuke Radius Caves "
        .. "you can find Nuke Radius Upgrades "
        .. "and entrances to I3."
    game_journal.add_txt(lang, "NUKE_RADIUS_CAVES_CONTAINER_alt", str);
    game_journal.add_path("@area;@area_i2;@area_i2_lattice;@area_i2_lattice_radcaves;{20}Version 2")
end

-------------------------------------------------------------------------------
