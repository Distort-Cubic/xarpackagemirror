--File: game_secret_trophy.lua

--This is intended for modders to be able to get
--the full list of secret trophies.

local all_table = {}

--Adding a secret trophy name.
function p.add(trophy_name)
    all_table[trophy_name] = true
end

--This is what modders should call.
function p.get_all()
    return all_table
end

--Seeing if the API name is valid.
function p.get_secret_trophy_exists(trophy_name)
    return all_table[trophy_name] ~= nil
end

--This is what modders should call.
function p.get_player_has_secret_trophy(trophy_name)
    local prefix = game_trophy.get_secret_trophy_prefix()
    local var = prefix .. "." .. trophy_name
    return ga_dyn_exists(var)
end

--To actually get a trophy, we use "game_trophy.lua".

function p.check_secret_trophy(trophy_name)
    if not p.get_secret_trophy_exists(trophy_name) then
        ga_print("*** Error: secret trophy not listed in game_secret_trophy.lua: " .. trophy_name)
    end
end

function p.__load_game()
    p.add_all_trophies()

    --Debugging.
    -- local copy = p.get_all()
    -- for k,v in pairs(copy) do
    --     ga_print("secret trophy: " .. k)
    -- end
end

-------------------------------------------------------------------------------

function p.add_all_trophies()
    --Ying world.
    p.add("st_yw_tutorial_dragon")
    p.add("st_yw_tutorial_pink_rings")
    p.add("st_yw_tutorial_yellow_key")
    p.add("st_yw_noob_maze_large")
    p.add("st_yw_imp_dungeon_above")
    p.add("st_yw_small_yellow_flower_blue")
    p.add("st_yw_small_yellow_flower_dungeon")
    p.add("st_yw_air_red_cube")
    p.add("st_yw_lib_below")
    p.add("st_yw_jumbo_large_cannon_pyramid")
    p.add("st_yw_spider_air")
    p.add("st_yw_unremembered_tower_1")
    p.add("st_yw_unremembered_tower_2")
    p.add("st_yw_shell_green_island")
    p.add("st_yw_emergency_wp")

    --Midway.
    p.add("st_mid_oak_tree_dungeon_1")
    p.add("st_mid_oak_tree_dungeon_2")
    p.add("st_mid_laser_fort_small")
    p.add("st_mid_laser_fort_small_secret")
    p.add("st_mid_basic_laser_maze")
    p.add("st_mid_richmond_building_top")
    p.add("st_mid_richmond_building_secret")
    p.add("st_mid_richmond_lib_secret")
    p.add("st_mid_stoney_air_totem_secret")
    p.add("st_mid_stoney_air_yellow_cube_island_1")
    p.add("st_mid_stoney_air_yellow_cube_island_2")
    p.add("st_mid_stoney_church_blackberry")
    p.add("st_mid_stoney_church_lib_yellow_key")
    p.add("st_mid_stoney_church_lib_yellow_guard")
    p.add("st_mid_stoney_church_column")
    p.add("st_mid_stoney_church_wig_explanation")
    p.add("st_mid_stoney_church_tower")
    p.add("st_mid_blackberry_big_room")
    p.add("st_mid_blackberry_secret_wp")
    p.add("st_mid_jericho_secret")
    p.add("st_mid_catacombs_secret")
    p.add("st_mid_camels_hump")
    p.add("st_mid_orange_outer_mantle")
    p.add("st_mid_mossy_basement")
    p.add("st_mid_mossy_cellar")
    p.add("st_mid_tweed_haunted")
    p.add("st_mid_huntington_blue_secret")

    --I1.
    p.add("st_i1_botany_caves_red_cube")
    p.add("st_i1_lib_vault")
    p.add("st_i1_inf_flower_secret_entrance")
    p.add("st_i1_williston_pyramid_secret")
    p.add("st_i1_williston_building_top")
    p.add("st_i1_bristol_maze_start")

    --I2.
    p.add("st_i2_lib_vault")
    p.add("st_i2_fanatic_island_secret")
    p.add("st_i2_fanatic_island_well_secret")
    p.add("st_i2_spruce_tree")
    p.add("st_i2_mini_ammo_purple_pod")
    p.add("st_i2_fanatic_blue")
    p.add("st_i2_emp_city")
    p.add("st_i2_bubble_cave_core")
    p.add("st_i2_i2vb_lbv")
    p.add("st_i2_i2vb_toronto")
    p.add("st_i2_i2vb_yellow")
    p.add("st_i2_toronto_maze_secret_1")
    p.add("st_i2_toronto_maze_secret_2")
    p.add("st_i2_toronto_maze_secret_3")
    p.add("st_i2_small_blue_flower_quaternary")
    p.add("st_i2_violets_secret_1")
    p.add("st_i2_violets_secret_2")
    p.add("st_i2_violets_secret_3")
    p.add("st_i2_woody_basement")
    p.add("st_i2_earthy_basement")
    p.add("st_i2_damp_basement")
    p.add("st_i2_moldy_basement")
    p.add("st_i2_woody_cellar")
    p.add("st_i2_earthy_cellar")
    p.add("st_i2_damp_cellar")
    p.add("st_i2_wig_prison_2")
    p.add("st_i2_pink_puzzle")

    --I3.
    p.add("st_i3_colchester_secret")
    p.add("st_i3_essex")
    p.add("st_i3_carrots")
    p.add("st_i3_pumpkin")
    p.add("st_i3_grow_temple")
    p.add("st_i3_forest_museum")
    p.add("st_i3_desert_flower_cloud")
    p.add("st_i3_mahogany_inside")
    p.add("st_i3_treetop")
    p.add("st_i3_turnips")
    p.add("st_i3_beets_above")
    p.add("st_i3_mahogany_basement")
    p.add("st_i3_root_veg_basement")
    p.add("st_i3_mahogany_cellar")

    --Burlington.
    p.add("st_bur_tower")
    p.add("st_bur_green_apple_club_hell")

    --Space.
    p.add("st_space_lib_secret_1")
    p.add("st_space_lib_secret_2")
    p.add("st_space_tau_caves_moon_secret")
    p.add("st_space_high_gold_asteroid")
    p.add("st_space_galaxy_flower_secret")
    p.add("st_space_grand_lockbox")
    p.add("st_space_root_secret")
    p.add("st_space_root_pink_prison")

    --Mylantis.
    p.add("st_my_under")
    p.add("st_my_city_hol")
    p.add("st_my_city_secret_nuke_room")
    p.add("st_my_caves_lib_secret")
    p.add("st_my_jade_museum")

    --Hell.
    p.add("st_hell_secret_wolf_forest")
    p.add("st_hell_moon_flower")
    p.add("st_hell_credits_inf2_story")

    --No waypoint (NWP).
    p.add("st_nwp_small_white_flower_maze")
    p.add("st_nwp_small_black_flower_bottom")
    p.add("st_nwp_health_tower_secret")
    p.add("st_nwp_paper_box")
    p.add("st_nwp_cardboard_box")
    p.add("st_nwp_wood_box")
    p.add("st_nwp_steel_box")
    p.add("st_nwp_quicksand_purple_house")
    p.add("st_nwp_quicksand_basement")
    p.add("st_nwp_red_rose")
    p.add("st_nwp_white_rose")
    p.add("st_nwp_beta_cube")
end
