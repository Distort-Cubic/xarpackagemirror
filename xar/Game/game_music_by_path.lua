--File: game_music_by_path.lua

--This script maps block types to playlist names.
--I reserve the right to change this mapping.

-- function p.
-- function p.verify_playlists_exist()

function p.__load_game()
    ga_debug_push("game_music_by_path.__load")
    p.init_maybe()
    ga_debug_pop("game_music_by_path.__load")
end

--Local data structures.
local initialized = false
p.chunk_bt_to_playlist = {} --These play music when you are "in their chunk".
p.kilo_bt_to_playlist = {}  --These play music when you are "in their kilo chunk".

function p.add_kilo(bt, playlist)
    p.kilo_bt_to_playlist[bt] = playlist
end

function p.remove_kilo(bt)
    p.kilo_bt_to_playlist[bt] = nil
end

function p.add_chunk(bt, playlist)
    p.chunk_bt_to_playlist[bt] = playlist
    p.add_kilo(bt, playlist)
end

function p.remove_chunk(bt)
    p.chunk_bt_to_playlist[bt] = nil
    p.remove_kilo(bt, playlist)
end

function p.add(bt, playlist)
    p.add_kilo(bt, playlist)
end

function p.remove(bt, playlist)
    p.remove_kilo(bt, playlist)
end

--Getting the playlist that is specified
--by the path of the player.
function p.get_cur_playlist()
    p.init_maybe();

    local player_level = ga_get_viewer_level()
    local level = player_level
    while(level >= 0) do
        local bt = ga_get_cocoon_block_of_chunk(level, std.bp(0,0,0))

        if( level == player_level ) then
            --For chunks at the same level of the player,
            --to play a playlist, they have to be in the
            --chunk_bt_to_playlist table.
            local new_playlist_name = p.chunk_bt_to_playlist[bt]
            if( new_playlist_name ~= nil ) then
                return new_playlist_name
            end
        else
            local new_playlist_name = p.kilo_bt_to_playlist[bt]
            if( new_playlist_name ~= nil ) then
                return new_playlist_name
            end
        end
        level = level - 1
    end
end

function p.init_maybe()
    if( initialized ) then return end
    initialized = true

    p.init_maybe_helper() --The hard work.
    p.verify_playlists_exist()
end

function p.init_maybe_helper()
    -------------------------------------------
    --Top of world.
    --It is intended that these playlists are all within "xar_top_of_world".

    p.add("XAR_ROOT",               "xar_top_of_world_very_top")
    p.add("XAR_SPACE_ROOT",         "xar_space_top")
    p.add("XAR_SPACE_CASE_GAUNT",   "xar_top_gauntlet") --The three challenges.
    p.add("XAR_SPACE_GALAXY",       "xar_space_galaxy")
    p.add("XAR_SPACE_SUN",          "xar_space_sun")
    p.add("XAR_SPACE_PLANET_AREA",  "xar_planet_area")

    -------------------------------------------
    --Ying world.
    --It is intended that these playlists are all within "xar_ying_world".

    p.add("XAR_YW_2",                       "xar_ying_world") --The big ying shell.

    p.add("XAR_YW_CHAMBERS",                "xar_ying_world_chambers")
    p.add("XAR_NOOB_MAZE",                  "xar_noob_maze")
    p.add("XAR_NOOB_MAZE_FLOWER_BLOCK",     "xar_noob_maze")
    p.add("XAR_TUTORIAL",                   "xar_tutorial")
    p.add("XAR_HAPPY_LAND",                 "xar_happy_land")
    p.add("XAR_HAPPY_LAND_START_HOOKS",     "xar_happy_land_main")

    p.add("XAR_YING_FOREST",                "xar_ying_forest")
    p.add("XAR_YING_FOREST_AIR_TOP",        "xar_ying_forest_air")

    p.add("XAR_SMALL_YELLOW_FLOWER_ROOM",   "xar_small_yellow_flower")
    p.add("XAR_SMALL_YELLOW_FLOWER_CITY_2", "xar_small_yellow_flower_dungeon")
    p.add("XAR_SMALL_CANNON_PYRAMID",       "xar_small_cannon_pyramid")
    p.add("XAR_LARGE_CANNON_PYRAMID",       "xar_large_cannon_pyramid")
    p.add("XAR_JUMBO_YELLOW_FLOWER",        "xar_jumbo_yellow_flower")

    p.add("XAR_YW_SMALL_ISLAND_CAVE_1",     "xar_ying_cave_island1")
    p.add("XAR_YW_SMALL_ISLAND_CAVE_5",     "xar_ying_cave_island5")

    p.add_chunk("XAR_YW_SHELL_ROOM",        "xar_ying_flower")

    p.add("XAR_YING_TREE_INNER",            "xar_ying_tree") --Inside a ying tree.

    --Unremembered tower is in the "dungeon" section.

    -------------------------------------------
    --Midway.
    --It is intended that these playlists are all within "xar_midway".

    p.add("XAR_TAU_CAVE_LAYER_1_MOLD_START",    "xar_tau_caves")
    p.add("XAR_TAU_CAVE_LAYER_2_CAVE_START",    "xar_tau_caves")
    p.add("XAR_TAU_CAVE_LAYER_3_CAVE_START",    "xar_tau_caves")
    p.add("XAR_TAU_CAVE_LAYER_1_MOLD",          "xar_tau_caves")
    p.add("XAR_TAU_CAVE_LAYER_2_CAVE",          "xar_tau_caves")
    p.add("XAR_TAU_CAVE_LAYER_3_CAVE",          "xar_tau_caves")

    p.add("XAR_TAU_CAVE_MOSS",                  "xar_tau_cave_moss")

    p.add("XAR_TAU_CAVE_AIR_TWEED_DUM",         "xar_tweed_air")
    p.add("XAR_TAU_CAVE_AIR_TWEED_DEE",         "xar_tweed_air")
    p.add("XAR_TAU_CAVE_TWEED_DEE_CAVE_1",      "xar_tweed_cave")

    p.add("XAR_STONEY_AIR",                     "xar_stoney_air")
    p.add("XAR_STONEY_AIR_YELLOW_CUBE_1_RICH",  "xar_yellow_cube_rich")
    p.add("XAR_STONEY_AIR_YELLOW_CUBE_1",       "xar_yellow_cube")
    p.add("XAR_STONEY_CHURCH",                  "xar_stoney_sanctuary")

    p.add("XAR_MOSSY_AIR_CUBE",                 "xar_mossy_air_black_cube")

    p.add("XAR_BLACKBERRY_MEDIUM",              "xar_blackberry")

    p.add("XAR_ORANGE",                         "xar_orange")
    p.add("XAR_ORANGE_OUTER_MANTLE_MEGA",       "xar_orange_mantle")

    p.add("XAR_BLUE_BUBBLE_INSIDE_KILO",        "xar_blue_bubble")

    -------------------------------------------
    --I1.
    --It is intended that these playlists are all within "xar_i1".

    p.add("XAR_BOTANY_LAB_TOP_1",           "xar_bot_lab_surface")
    p.add("XAR_BOTANY_LAB_BLACK_CUBE",      "xar_bot_lab_black_cube")
    p.add("XAR_BOTANY_LAB_LIGHTHOUSE_CASE", "xar_lighthouse")

    p.add("XAR_INFINITY_FLOWER_CHEESE_1",   "xar_inf_flower_cheese")

    p.add("XAR_WILLISTON_KILO_ABOVE",       "xar_i1_williston_field")

    p.add("XAR_WILLISTON_CASTLE",           "xar_i1_williston_castle_normal")
    p.add("XAR_WILLISTON_ZUBE_CASTLE",      "xar_i1_williston_castle_zube")

    p.add("XAR_SCORPIUS_PORTAL",            "xar_i1_scorpius_portal")

    -------------------------------------------
    --I2.
    --It is intended that these playlists are all within "xar_i2".

    p.add("XAR_FANATIC_LATTICE_BIG",            "xar_i2_fanatic_lattice")
    p.add("XAR_FANATIC_LATTICE",                "xar_i2_fanatic_lattice")

    p.add("XAR_FANATIC_WEED",                       "xar_i2_fanatic_weed")
    p.add("XAR_FANATIC_BLUE_MEGA",                  "xar_i2_fanatic_blue_caves")
    p.add("XAR_WEED_RINGS",                         "xar_i2_weed_rings")
    p.add("XAR_MINI_AMMO_FOREST_TOP",               "xar_i2_mini_ammo_forest_top")
    p.add("XAR_MINI_AMMO_FOREST_HANGING_MEGA",      "xar_i2_mini_ammo_forest_hanging")
    p.add("XAR_MINI_AMMO_FOREST_GUERRILLA_KILO",    "xar_i2_guerrilla_forest")
    p.add("XAR_MINI_AMMO_FOREST_BIG_POD",           "xar_i2_mini_forest_big_pod")

    p.add("XAR_BUBBLE_CAVE_BUBBLE_KILO",                "xar_i2_bubble_cave_bubble")
    p.add("XAR_BUBBLE_CAVE_MEGA",                       "xar_i2_bubble_cave")
    p.add("XAR_BUBBLE_CAVE_BUBBLE_ABOMINATION_KILO",    "xar_i2_bubble_cave_center") --Could add boss music.

    p.add("XAR_SMALL_BLUE_FLOWER_FRUIT_MEGA",           "xar_i2_small_blue_flower_1")
    p.add("XAR_SMALL_BLUE_FLOWER_SECONDARY_MEGA_INNER", "xar_i2_small_blue_flower_2")
    p.add("XAR_SMALL_BLUE_FLOWER_TERTIARY_MEGA",        "xar_i2_small_blue_flower_3")
    p.add("XAR_SMALL_BLUE_FLOWER_QUATERNARY_MEGA",      "xar_i2_small_blue_flower_4")
    p.add("XAR_SMALL_BLUE_FLOWER_QUINARY_KILO",         "xar_i2_small_blue_flower_5")

    p.add("XAR_FANATIC_ISLAND_WILLOW_MAIN",             "xar_i2_willow_normal")
    p.add("XAR_FANATIC_ISLAND_WILLOW_CENTER",           "xar_i2_willow_normal")

    p.add("XAR_MYSTIC_VINE_SHAFT_1",        "xar_i2_mystic_vine_1")
    p.add("XAR_MYSTIC_VINE_SHAFT_2",        "xar_i2_mystic_vine_2")
    p.add("XAR_MYSTIC_VINE_SHAFT_3",        "xar_i2_mystic_vine_3")
    p.add("XAR_MYSTIC_VINE_SHAFT_4",        "xar_i2_mystic_vine_4")

    p.add("XAR_RASPBERRY",                  "xar_i2_raspberry")

    p.add("XAR_TO_I3_HOMING_WALL_MEGA",     "xar_i2_gate_to_i3_homing")
    p.add("XAR_TO_I3_MIRROR_WALL_MEGA",     "xar_i2_gate_to_i3_mirror")

    p.add("XAR_FANATIC_SPIRE",      "xar_i2_fanatic_spire")

    p.add("XAR_CREEPING_JENI_TOP",      "xar_i2_creeping_jeni")
    p.add("XAR_CREEPING_JENI_VINE_2",   "xar_i2_creeping_jeni_vine")

    p.add("XAR_VIOLETS_OUT_2",      "xar_i2_violets_1")
    p.add("XAR_VIOLETS_OUT_3",      "xar_i2_violets_2")
    p.add("XAR_VIOLETS_OUT_4",      "xar_i2_violets_3")
    p.add("XAR_VIOLETS_OUT_3_MAP",  "xar_i2_violets_secret")

    --Vines.
    p.add("XAR_I2VB_2",             "xar_i2_vine_bundle_1")
    p.add("XAR_I2VB_3",             "xar_i2_vine_bundle_2")
    p.add("XAR_I2VB_4",             "xar_i2_vine_bundle_3")
    p.add("XAR_I2VB_5",             "xar_i2_vine_bundle_4")
    p.add("XAR_FANATIC_VINE_SHAFT", "xar_i2_fanatic_vine")
    p.add("XAR_PIRATE_VINE",        "xar_i2_pirate_vine")
    --Laser branch vine.
    p.add("XAR_LBV_A",              "xar_i2_laser_branch_vine_1")
    p.add("XAR_LBV_B",              "xar_i2_laser_branch_vine_1")
    p.add("XAR_LBV_2_A",            "xar_i2_laser_branch_vine_2")
    p.add("XAR_LBV_2_B",            "xar_i2_laser_branch_vine_2")
    p.add("XAR_LBV_3_A",            "xar_i2_laser_branch_vine_3")
    p.add("XAR_LBV_3_B",            "xar_i2_laser_branch_vine_3")
    --More vines.
    p.add("XAR_TORONTO_VINE_A",     "xar_i2_toronto_vine")
    p.add("XAR_TORONTO_VINE_B",     "xar_i2_toronto_vine")
    p.add("XAR_TORONTO_VINE_MAZE",  "xar_i2_toronto_vine_center")
    p.add("XAR_I2VB_LAB_SUPER",     "xar_i2_lab_bundle")
    p.add("XAR_I2VB_YELLOW",        "xar_i2_yellow_vine")

    p.add("XAR_FANATIC_ISLAND_CAVES",           "xar_i2_fanatic_island_caves")
    p.add("XAR_FANATIC_ISLAND_WELL_AIR_KILO",   "xar_i2_fanatic_island_well")
    p.add("XAR_FANATIC_ISLAND_WELL_BELOW",      "xar_i2_fanatic_island_well")
    p.add("XAR_SPIRIT_POCKET",                  "xar_i2_spirit_pocket")
    p.add("XAR_FANATIC_ISLAND_ABOVE",           "xar_i2_fanatic_island_forest")
    p.add("XAR_FANATIC_ISLAND_WELL_ABOVE",      "xar_i2_fanatic_island_forest")

    p.add("XAR_I2_FERN_OSTRICH",    "xar_i2_fern_ostrich")

    -------------------------------------------
    --I3.
    --It is intended that these playlists are all within "xar_i3".

    p.add("XAR_GROUP_3_MEGA",                       "xar_i3_main_forest_large_size") --Hard to get.
    p.add("XAR_GROUP_3_PATCH_AIR_ABOVE",            "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_TREES_BELOW",          "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_TREES_ABOVE",          "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_AMMO_KILO_BELOW",      "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_EMP_POST",             "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_WAYPOINT_KILO_BELOW",  "xar_i3_main_forest")
    p.add("XAR_GROUP_3_PATCH_WAYPOINT_KILO_ABOVE",  "xar_i3_main_forest")
    p.add("XAR_SAGITTARIUS_PORTAL",                 "xar_i3_main_forest")
    p.add("XAR_SAGITTARIUS_ABOVE",                  "xar_i3_main_forest")

    p.add("XAR_JACKFRUIT_CENTER_GREEN",     "xar_i3_jackfruit")

    p.add("XAR_GROUP_3_PATCH_DESERT",       "xar_i3_desert")
    p.add("XAR_DESERT_ABOVE",               "xar_i3_desert")
    p.add("XAR_DESERT_CACTUS",              "xar_i3_desert_cactus")
    p.add("XAR_DESERT_OASIS",               "xar_i3_desert_oasis")
    p.add("XAR_DESERT_FLOWER_TOP_2",        "xar_i3_desert_flower")
    p.add("XAR_DESERT_FLOWER_CLOUD",        "xar_i3_desert_flower_cloud")
    p.add("XAR_TANGERINE",                  "xar_i3_tangerine")

    p.add("XAR_GROUP_3_SKY_KILO",               "xar_i3_cloud")
    p.add("XAR_GROUP_3_PATCH_WP_KILO_ABOVE",    "xar_i3_cloud")
    p.add("XAR_GROUP_3_PATCH_WP_KILO_ABOVE2",   "xar_i3_cloud")
    p.add("XAR_I3_CLOUD",                       "xar_i3_cloud")

    p.add("XAR_RIVER_KILO",         "xar_i3_river")
    p.add("XAR_RIVER_CENTER_KILO",  "xar_i3_river")
    p.add("XAR_RIVER_TREASURE_1",   "xar_i3_river")

    p.add("XAR_MAHOGANY_BARK_MEGA",     "xar_i3_mahogany_bark")
    p.add("XAR_MAHOGANY_INSIDE_MEGA",   "xar_i3_mahogany_cavity")

    p.add("XAR_I3_TREETOP_CAVE_MEGA",   "xar_i3_treetop_outer")
    p.add("XAR_I3_TREETOP_INNER_TRUNK", "xar_i3_inner_tree")

    p.add("XAR_CARROTS_GROUND",         "xar_i3_carrots_cave")
    p.add("XAR_TURNIPS_BELOW",          "xar_i3_turnips_cave")
    p.add("XAR_BEETS_BELOW",            "xar_i3_beets_cave")

    p.add("XAR_SLIVER_MAZE_DEEP_BELOW", "xar_i3_deep_sliver_maze")
    p.add("XAR_SLIVER_MAZE_DEEP_MID",   "xar_i3_deep_sliver_maze")
    p.add("XAR_SLIVER_MAZE_DEEP_ABOVE", "xar_i3_deep_sliver_maze")

    -------------------------------------------
    --Burlington.
    --It is intended that these playlists are all within "xar_burlington".

    p.add("XAR_BURLINGTON_COLS",            "xar_bur_giant_columns")

    p.add("XAR_BURLINGTON",                 "xar_bur_city")

    --Entering the combination lock.
    p.add("XAR_BURLINGTON_CITY_BUILDING_ROOM_SPIRAL",       "xar_bur_combo")
    p.add("XAR_BURLINGTON_CITY_BASE_KILO",                  "xar_bur_combo")
    p.add("XAR_BURLINGTON_CITY_HANGING_SPIRAL_BUILDINGS",   "xar_bur_combo")

    p.add("XAR_BURLINGTON_TEGAN_GARDEN",    "xar_bur_tegan_garden")
    p.add("XAR_BURLINGTON_APPLE_CLUB",      "xar_bur_apple_club")

    -------------------------------------------
    --Space.

    p.add("XAR_SPACE_TOP_1",                "xar_outer_space_level_0")
    p.add("XAR_MYLANTIS_ABOVE",             "xar_outer_space_level_0")
    -- p.add("SPACE_TOP_2",    "xar_space_top_2")

    --Later, might want to have playlists for various parts
    --of moons and planets.

    p.add("XAR_SMALL_MINIGUN_PLANET",       "xar_planet_small_minigun")
    p.add("XAR_PLANET_CLAY",                "xar_planet_clay")

    p.add("XAR_SPACE_MOON_ALPHA",           "xar_moon_alpha")
    p.add("XAR_SMALL_DARK_HOLE_MAZE",       "xar_moon_beta")
    p.add("XAR_SPACE_MOON_GAMMA",           "xar_moon_gamma")
    p.add("XAR_TAU_CAVE_MOON",              "xar_moon_tau")
    p.add("XAR_TAU_CAVE_MOON_SECRET",       "xar_moon_tau")
    p.add("XAR_MOON_ICE",                   "xar_moon_ice")
    p.add("XAR_FORBIDDEN_PLANET",           "xar_moon_fire_rate")
    p.add("XAR_BLUE_RING_STATION_SHAFT",    "xar_outer_space_blue_ring_station")

    -------------------------------------------
    --The bulk.

    --This will be added to the game later.

    -------------------------------------------
    --Mylantis.
    --It is intended that these playlists are all within "xar_mylantis".

    p.add("XAR_MYLANTIS",                   "xar_mylantis")
    --Need to add music to the Mylantis city underground.

    p.add("XAR_DAN_HOUSE_AREA_HOUSE_ABOVE", "xar_secret_farmhouse");

    p.add("XAR_MYLANTIS_CRUST_MEGA",        "xar_mylantis_crust") --Could break into pieces.
    p.add("XAR_MYLANTIS_CRUST_BOT_KILO",    "xar_mylantis_cavern")
    p.add("XAR_MYLANTIS_CAVE_MEGA",         "xar_mylantis_caves")
    p.add("XAR_MYLANTIS_CAVERN_KILO",       "xar_mylantis_cavern")
    p.add("XAR_MYLANTIS_GREAT_CAVERN_MEGA", "xar_mylantis_great_cavern")
    p.add("XAR_MYLANTIS_RED_CAVE_MEGA",     "xar_mylantis_red_caves")
    --
    p.add("XAR_LOST_SPICE_REFINERY",        "xar_mylantis_refinery")

    -------------------------------------------
    --Hell.
    --It is intended that these playlists are all within "xar_hell".

    --Entrances to hell.
    p.add_chunk("XAR_MYLANTIS_CITY_HOL_ENTRANCE",   "xar_hell_house_of_lampreys")
    p.add_chunk("XAR_MYLANTIS_CITY_HOL_LAMPREY",    "xar_hell_house_of_lampreys")
    p.add_chunk("XAR_MYLANTIS_CITY_HOL_PORTAL",     "xar_hell_house_of_lampreys") --Could make another playlist.
    p.add("XAR_BURLINGTON_APPLE_CLUB_HELL",         "xar_hell_club_green_apple")

    p.add("XAR_GROUP_3_PATCH_HELL",                 "xar_hell_entrance") --Could make another playlist.

    p.add("XAR_HELL_LEVEL1_ENTRANCE",               "xar_hell_entrance_hell_flower")

    --Inside the hell flower.
    p.add("XAR_HELLBERRY",                          "xar_hell_flower_pre_boss_fight")
    p.add("XAR_HELLBERRY_SEED_ENTRANCE_2",          "xar_hell_flower_before_final_boss")
    p.add("XAR_HELLBERRY_SEED",                     "xar_boss_inner_core")
    p.add("XAR_HELLBERRY_SEED_TOWER_3",             "xar_hell_flower_after_boss")

    p.add("XAR_HELL_GATE_KILO",                     "xar_hell_gate") --Can get to after getting key to universe.
    
    --More hell areas will added below the gate later.

    -------------------------------------------
    --Credits.
    --It is intended that these playlists are all within "xar_credits".

    p.add("XAR_ENDING_KILO",    "xar_credits")

    --Zach Barth thought the theme song to Infinifrag 2 should be
    --Party Hard by Andrew WK!
    p.add_chunk("XAR_ENDING_SECRET_INF_2_1",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_2",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_3",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_4",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_5",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_6",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_7",    "xar_inf2")
    p.add_chunk("XAR_ENDING_SECRET_INF_2_8",    "xar_inf2")

    -------------------------------------------
    --No waypoint.
    --It is intended that these playlists are all within "xar_no_waypoint".

    p.add("XAR_QUICKSAND_GRASS_1",          "xar_nwp_quicksand_grass")
    p.add("XAR_SMALL_WHITE_FLOWER_CENTER",  "xar_nwp_small_white_flower")
    p.add("XAR_SMALL_2D_BLACK_FLOWER_MAZE", "xar_nwp_small_black_flower")
    p.add("XAR_APPLE_TREE_RED",             "xar_nwp_apple_tree_red")
    p.add("XAR_APPLE_TREE_YELLOW",          "xar_nwp_apple_tree_yellow")
    p.add("XAR_APPLE_TREE_GREEN",           "xar_nwp_apple_tree_green")
    p.add("XAR_HEALTH_TOWER",               "xar_nwp_health_tower")
    p.add("XAR_CUBE1",                      "xar_new_cube_alpha")

    -------------------------------------------
    --Sponges.
    --It is intended that these playlists are all within "xar_sponge".

    p.add("XAR_SPONGE_PURE",        "xar_sponge_pure")
    p.add("XAR_SPONGE1",            "xar_sponge_alpha")
    p.add("XAR_SPONGE2",            "xar_sponge_beta")
    p.add("XAR_TOPAZ_GEM_SPONGE",   "xar_sponge_topaz")
    p.add("XAR_IOLITE_GEM_SPONGE",  "xar_sponge_iolite")
    p.add("XAR_EMERALD_GEM_SPONGE", "xar_sponge_emerald")

    -------------------------------------------
    --Mushrooms (could organize this differently).
    --It is intended that these playlists are all within
    --the "xar_mushroom" folder, but the user may want
    --to organize this differently.

    p.add("XAR_BLUE_MUSHROOM",      "xar_blue_mushroom")
    p.add("XAR_MUSHROOM",           "xar_salmon_mushroom")
    p.add("XAR_BLACK_MUSHROOM",     "xar_black_mushroom")
    p.add("XAR_YELLOW_MUSHROOM",    "xar_yellow_mushroom")
    p.add("XAR_RED_MUSHROOM",       "xar_red_mushroom")

    -------------------------------------------
    --Large mazes.
    --It is intended that these playlists are all within "xar_maze/xar_big_maze".

    p.add("XAR_YW_SLOW_EXIT_2",             "xar_ying_world_exit_maze")
    p.add("XAR_STONEY_CHURCH_MAZE_KILO",    "xar_stoney_sanctuary_maze")
    p.add("XAR_SMALL_WHITE_FLOWER_MAZE",    "xar_small_white_flower_maze")
    p.add("XAR_CATACOMBS",                  "xar_catacombs")
    p.add("XAR_RED_MAZE",                   "xar_red_maze_flower")
    p.add("XAR_ALADDIN_CAVE_BELOW",         "xar_aladdin_cave_maze")
    p.add("XAR_LARGE_WHITE_FLOWER_MAZE",    "xar_large_white_flower_maze")

    -------------------------------------------
    --Big room maze.
    --It is intended that these playlists are all within "xar_maze/xar_big_room_maze".

    p.add("XAR_TORONTO",        "xar_toronto")
    p.add("XAR_SAPPHIRE_GEM",   "xar_sapphire")
    p.add("XAR_AMETHYST_GEM",   "xar_amethyst")

    -------------------------------------------
    --Caves.
    --Some caves are claustrophobic (which we call small),
    --and others are not (which we call large).
    --It is intended that these playlists are all within "xar_cave".

    p.add("XAR_TAU_CAVE_FLOWER_CENTER",     "xar_tau_cave_flower")
    p.add("XAR_RICHMOND_TOP_HOMING_1",      "xar_richmond_red_caves")
    
    p.add("XAR_MOSSY_AIR_CUBE_CAVE_KILO",   "xar_mossy_air_black_cube_caves")

    p.add("XAR_ORANGE_OUTER_CRUST_KILO",    "xar_orange_outer_crust")

    p.add("XAR_ICE_CUBE_SOLID",             "xar_ice_cube_solid")

    p.add("XAR_BOTANY_LAB_CAVE_IMP_TOP",    "xar_bot_caves_imp")
    p.add("XAR_BOTANY_LAB_CAVE_GNOLL",      "xar_bot_caves_gnoll")
    p.add("XAR_BOTANY_LAB_CAVE_DEMON",      "xar_bot_caves_demon")
    p.add("XAR_BOTANY_LAB_CAVE_ORC",        "xar_bot_caves_orc")

    p.add_chunk("XAR_DESERT_CAVE_ENTRANCE",                 "xar_desert_cave")
    p.add_chunk("XAR_DESERT_CAVE_ENTRANCE_TUBE",            "xar_desert_cave")
    p.add_chunk("XAR_DESERT_CAVE_ENTRANCE_TUBE_BOTTOM",     "xar_desert_cave")
    p.add("XAR_DESERT_CAVE_BIG",                            "xar_desert_cave")

    p.add("XAR_NUKE_RADIUS_CAVES_MEGA",     "xar_i2_nuke_radius_cave")

    -------------------------------------------
    --Boss.
    --It is intended that these playlists are all within "xar_boss".
    
    p.add("XAR_GUNS",                                   "xar_guns")

    p.add("XAR_LASER_FORT_SMALL",                       "xar_laser_fort_small")

    --"Arcades", where you are given infinite ammo.
    p.add("XAR_RICHMOND_LIBRARY_ARCADE_KILO",           "xar_richmond_arcade")
    p.add("XAR_RAIL_CAVE",                              "xar_rail_cave_arcade")
    p.add("XAR_BURLINGTON_TOWER_SPIRAL",                "xar_arcade_bur_tower_spiral")

    p.add("XAR_YING_FOREST_DEEP_HANGING_BATTLE_X",      "xar_boss_honey_comb")
    p.add("XAR_YING_FOREST_DEEP_HANGING_BATTLE_Y",      "xar_boss_honey_comb")
    p.add("XAR_YW_SHELL_3",                             "xar_boss_ying_shell")

    p.add("XAR_STONEY_AIR_CAVE_3_TOP",                  "xar_boss_stoney_cave")

    p.add("XAR_ORANGE_INNER_CRUST_KILO_HARD",           "xar_orange_inner_crust")

    p.add("XAR_ICE_CUBE_AIR",                           "xar_ice_cube_air")

    p.add("XAR_BLUE_BUBBLE_QUICK_ENTRANCE_2",           "xar_blue_bubble_entrance")
    p.add("XAR_BLUE_BUBBLE_QUICK_ENTRANCE_1",           "xar_blue_bubble_entrance")
    p.add("XAR_BLUE_BUBBLE_NUKE_KILO",                  "xar_blue_bubble_red_room")

    p.add("XAR_BOTANY_LAB_CAVE_TROLL",                  "xar_bot_caves_troll")
    p.add("XAR_BOTANY_LAB_BIG_RED",                     "xar_bot_lab_red_cube")

    p.add("XAR_LIGHTHOUSE_QUICK_1",                     "xar_lighthouse_quick_entrance")

    p.add("XAR_INFINITY_FLOWER_ROOM",                   "xar_inf_flower")

    p.add("XAR_I2_LIBRARY_TOWER_SHAFT_BOTTOM",          "xar_i2_lib_tower")
    p.add("XAR_I2_LIBRARY_TOWER_SHAFT",                 "xar_i2_lib_tower")
    p.add("XAR_I2_LIBRARY_TOWER_SHAFT_BOSS",            "xar_i2_lib_tower")
    p.add("XAR_I2_LIBRARY_TOWER_SHAFT_TOP",             "xar_i2_lib_tower")

    p.add("XAR_MAHOGANY_CORE_WALL_KILO",                "xar_i3_mahogany_core_wall")

    p.add("XAR_ROSE_RED_CORE",                          "xar_boss_rose_red")
    p.add("XAR_ROSE_WHITE_CORE",                        "xar_boss_rose_white")

    p.add("XAR_DAN_HOUSE_BOSS_MEGA",                    "xar_boss_farmhouse_basement")

    -------------------------------------------
    --Dungeon (often with floors).
    
    p.add("XAR_YING_FOREST_TOWER_FLOOR_1",          "xar_unremembered_tower")
    p.add("XAR_YING_FOREST_TOWER_FLOOR_2",          "xar_unremembered_tower")
    p.add("XAR_YING_FOREST_TOWER_FLOOR_3",          "xar_unremembered_tower")
    p.add("XAR_YING_FOREST_TOWER_FLOOR_4",          "xar_unremembered_tower")
    p.add("XAR_YING_FOREST_TOWER_TREASURE_KILO",    "xar_unremembered_tower")

    p.add("XAR_RICHMOND_SEWERS_1",          "xar_richmond_sewers")

    --A cave system and then a dugeon basement.
    p.add("XAR_BOTANY_LAB_LIGHTHOUSE_CASE", "xar_lighthouse_below")

    p.add("XAR_WILLISTON_KILO_BELOW",       "xar_williston_dungeon")

    p.add("XAR_DAN_HOUSE_AREA_HOUSE_BELOW", "xar_secret_farmhouse_basement");

    -------------------------------------------
    --Library.
    --It is intended that these playlists are all within "xar_library".

    p.add("XAR_RICHMOND_LIBRARY",       "xar_library_richmond")
    p.add("XAR_MAIN_BRANCH_LIB_1",      "xar_library_main_branch")
    p.add("XAR_I1_LIBRARY",             "xar_library_i1")
    p.add("XAR_I2_LIBRARY",             "xar_library_i2")
    p.add("XAR_I3_LIBRARY",             "xar_library_i3")
    p.add("XAR_SPACE_LIBRARY",          "xar_library_space")
    p.add("XAR_MYLANTIS_CAVES_LIB",     "xar_library_mylantis_caves")

    -------------------------------------------
    --Town.
    --It is intended that these playlists are all within "xar_town".

    p.add("XAR_RICHMOND",                           "xar_town_richmond")
    p.add("XAR_JERICHO",                            "xar_town_jericho")
    p.add("XAR_HUNTINGTON",                         "xar_town_huntington")
    p.add("XAR_BRISTOL",                            "xar_town_bristol")
    p.add("XAR_WILLISTON_KILO_CITY_ABOVE",          "xar_town_williston")
    p.add("XAR_WILLISTON_CENTER_KILO",              "xar_town_williston_center")
    p.add("XAR_MONTREAL",                           "xar_town_montreal")
    p.add("XAR_DANVILLE_ABOVE",                     "xar_town_danville")
    p.add("XAR_DANVILLE_BELOW",                     "xar_town_danville")
    p.add("XAR_BUBBLE_CAVE_WALL_TREASURE",          "xar_town_bubble_cave")
    p.add("XAR_FANATIC_ISLAND_DARK_WILLOW_CENTER",  "xar_town_dark_willow_center")
    p.add("XAR_COLCHESTER",                         "xar_town_colchester")
    p.add("XAR_ESSEX",                              "xar_town_essex")
    p.add("XAR_DENVER",                             "xar_town_denver")

    -------------------------------------------
    --Hidden spaces (often big).
    --Treasure areas with subareas to explore.
    --Some of these are somewhat secret, but not all.
    --It is intended that these playlists are all within "xar_hidden_spaces".

    p.add("XAR_STABLE_SING_SECRET_2",                       "xar_emergency_wp_secret")
    p.add("XAR_STONEY_AIR_SECRET_AREA_2",                   "xar_yellow_cube_secret_island")
    p.add("XAR_MOSSY_AIR_CUBE",                             "xar_mossy_air_black_cube")
    p.add("XAR_BLUE_BUBBLE_INSIDE",                         "xar_blue_bubble_secret")
    p.add("XAR_ICE_CUBE_SECRET",                            "xar_ice_cube_center")
    p.add("XAR_ICE_CUBE_TREASURE_1",                        "xar_ice_cube_center")
    p.add("XAR_WIG_CHECKPOINT",                             "xar_wig_checkpoint")
    p.add("XAR_WOLF_FOREST_CASE",                           "xar_wolf_forest")
    p.add("XAR_FANATIC_ISLAND_WELL_SECRET_1",               "xar_fanatic_island_well_secret")
    p.add_chunk("XAR_TAU_CAVE_MOON_SECRET_ROOM",            "xar_tau_cave_moon_secret")
    p.add_chunk("XAR_SPACE_GALAXY_FLOWER_SECRET_TREASURE",  "xar_galaxy_flower_secret")

    p.add("XAR_TO_I3_HOMING_INNER_AIR_MEGA",                "xar_i3_gate_center")
    p.add("XAR_TO_I3_HOMING_INNER_CENTER_MEGA",             "xar_i3_gate_center")
    p.add("XAR_TO_I3_MIRROR_INNER_AIR_MEGA",                "xar_i3_gate_center")
    p.add("XAR_TO_I3_MIRROR_INNER_CENTER_MEGA",             "xar_i3_gate_center")
    p.add("XAR_GROUP_3_BELOW",                              "xar_i3_gate_center")

    p.add("XAR_MAHOGANY_CORE_MEGA",                         "xar_i3_mahogany_core")

    p.add("XAR_I3_TREETOP_X_POS",                           "xar_i3_treetop_center")
    p.add("XAR_I3_TREETOP_X_NEG",                           "xar_i3_treetop_center")
    p.add("XAR_I3_TREETOP_Y_POS",                           "xar_i3_treetop_center")
    p.add("XAR_I3_TREETOP_Y_NEG",                           "xar_i3_treetop_center")
    p.add("XAR_I3_TREETOP_INNER_TREE",                      "xar_i3_treetop_center")

    p.add("XAR_BEET_ABOVE",                                 "xar_i3_beet_cavern")

    p.add_chunk("XAR_SPACE_LIBRARY_SECRET_2",               "xar_space_lib_secret")
    p.add_chunk("XAR_SPACE_LIBRARY_SECRET_3",               "xar_space_lib_secret")
end

-------------------------------------------------------------------------------
--                   Verifying that the package has playlists
-------------------------------------------------------------------------------

function p.verify_playlists_exist()
    local print_errors_to_console = ga_get_b("xar.sound.print_broken_playlist_errs_to_console")
    local print_errors_to_stdout  = ga_get_b("xar.sound.print_broken_playlist_errs_to_stdout")

    if( not print_errors_to_console and
        not print_errors_to_stdout )
    then
        return
    end

    --Getting all playlists.
    --The playlists are the keys.
    local all_playlists = {}
    for k,v in pairs(p.chunk_bt_to_playlist) do
        all_playlists[v] = true
    end
    for k,v in pairs(p.kilo_bt_to_playlist) do
        all_playlists[v] = true
    end

    --Sorting the playlists into an array.
    local all_playlists_array = {}
    for k in pairs(all_playlists) do
        table.insert(all_playlists_array, k)
    end
    table.sort(all_playlists_array)

    --Checking each playlist.
    for _,playlist in pairs(all_playlists_array) do
        local exists = ga_playlist_exists(playlist)
        if( not exists ) then
            local msg = "Xar music playlist not found: " .. playlist
            if( print_errors_to_console ) then
                ga_console_print("^1" .. msg)
            end
            if( print_errors_to_stdout ) then
                ga_print("*** Warning: " .. msg)
            end
        end
    end
end
