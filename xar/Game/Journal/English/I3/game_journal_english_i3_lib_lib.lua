--File: game_journal_english_i3_lib_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "The ^x00ff00Ying World^! Library is in "
        .. "Gated Communities of the Ying World.\n\n"
        .. "Gated Communities are floating structures "
        .. "with High Voltage fences. "
        .. "They are the same size as your starting island "
        .. "in the Ying World."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_yw", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{20}Ying world")

    local str = "The ^x00ff00Richmond^! Library "
        .. "can be found in the Sewers of Richmond. "
        .. "Richmond towns can be found in the Tau Caves."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_richmond", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{30}Richmond")

    local str = "The ^x00ff00Stoney^! Library "
        .. "is in Stoney Sanctuaries. "
        .. "You can find these on the largest islands inside "
        .. "the Yellow Cubes that are inside Stoney Air.\n\n"
        .. "Warning: When you first enter a Yellow Cube, "
        .. "if you then shrink, "
        .. "it will be too difficult to find one of these islands!"
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_stoney", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{40}Stoney")

    local str = "The ^x00ff00I1^! Library "
        .. "is on the surface of Botany Labs. "
        .. "Botany Labs can be found inside Blue Bubbles, which "
        .. "can be found in the Inner Mantle of Oranges.\n\n"
        .. "There is also one inside every Montreal City.\n\n"
        .. "There is also one of these libraries in Starksboro, "
        .. "which is at the top of Inner Trees in the I3 Main Forest."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_i1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{50}I1")

    local str = "The ^x00ff00I2^! Library is in I2. "
        .. "The brute force way to find these is to go to the 3x3 islands "
        .. "in Fanatic Air (in I2). This air is everywhere in I2. "
        .. "On each such island there is a tower which has such a "
        .. "library at the top. Beware: It is tricky to get to the top.\n\n"
        .. "This library can also be found in Danville Towns (in I2).\n\n"
        .. "The most efficient way to find these libraries is to go about "
        .. "your usual business exploring I2 and wait for one of these "
        .. "to randomly appear.\n\n"
        .. "There is also one of these libraries in Starksboro."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_i2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{60}I2")

    local str = "The ^x00ff00I3^! Library can be found on the branches "
        .. "of the Mahogany trees that grow in the I3 Main Forest.\n\n"
        .. "There is also one of these libraries in Starksboro."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_i3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{70}I3")

    local str = "The ^x00ff00Space^! Library is a Moon. "
        .. "Thus, you find it in the usual place you find Moons: "
        .. "next to Planets, which are next to Suns, which are in "
        .. "Galaxies."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_space", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{80}Space")

    local str = "The ^x00ff00Main Branch^! Library can be found in "
        .. "a tall tower in the Mylantis Top Garden "
        .. "in the Mylantis Top City."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_main_branch", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{90}Main branch")

    local str = "The ^x00ff00Mylantis Caves^! Library can be found "
        .. "underground in the Caves of Mylantis."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_mylantis_caves", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{100}Mylantis caves")

    local str = "The ^x00ff00Basement^! Library can be found "
        .. "in Essex towns. "
        .. "These can be found in I3. "
        .. "There is a town of Essex in Starksboro, for example."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_basement", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{110}Basement")

    local str = "The ^x00ff00Cellar^! Library can be found "
        .. "inside Basement Libraries."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_cellar", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{120}Cellar")

    local str = "The ^x00ff00Weapon^! Library can be found in most "
        .. "locations where you are given a new Weapon Mod."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_wep", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{130}Weapon")

    local str = "The ^x00ff00Blue^! Library can be found in Denver Cities. "
        .. "You can find these cities in one of the low down layers "
        .. "of the Mylantis Caves. "
        .. "See the Mylantis Caves library for more information.\n\n"
        .. "This library tells you which areas are \"Blue Active\"."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_blue", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{140}Blue")

    local str = "The ^x00ff00Pink^! Library can be found in the "
        .. "treasure room of Amethyst Gems. "
        .. "See the Mylantis Caves library for more information "
        .. "on where to find Amethyst Gems.\n\n"
        .. "This library tells you which areas are \"Pink Active\"."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_pink", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{150}Pink")

    local str = "The ^x00ff00Library^! Library can be found in Starksboro "
        .. "(in I3 Inner Trees, at the top of the Mahogany Trees "
        .. "that grow in the I3 Main Forest)."
    game_journal.add_txt(lang, "LIBRARY_LIBRARY_LIST_1_lib", str)
    game_journal.add_path("@area;@area_lib;@area_lib_lib;{10}Library library")
end

-------------------------------------------------------------------------------
