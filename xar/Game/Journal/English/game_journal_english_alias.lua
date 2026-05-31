--File: game_journal_english_alias.lua

function p.main()
    --Important.
    game_journal.sys1_set_last_lang_str("english")

    game_journal.add_edge_alias("@basic", "{10}Basic")
    p.add_category_basic()

    game_journal.add_edge_alias("@prog", "{20}Program / console")
    p.add_category_program_and_console()

    game_journal.add_edge_alias("@wep", "{30}Weapons")
    p.add_category_wep()

    game_journal.add_edge_alias("@item", "{40}Other items")
    p.add_category_item()

    game_journal.add_edge_alias("@mon", "{50}Monsters")
    p.add_category_monster()

    game_journal.add_edge_alias("@quest", "{60}Quests")
    p.add_category_quest()

    game_journal.add_edge_alias("@area", "{70}Areas / navigation")
    p.add_category_area()

    game_journal.add_edge_alias("@lore", "{80}Lore")
    p.add_category_area_lore()

    game_journal.add_edge_alias("@yang", "{90}Yang world")
    p.add_category_yang()
end

function p.add_category_basic()
    game_journal.add_edge_alias("@basic_controls", "{10}Controls")
    game_journal.add_edge_alias("@basic_save", "{20}Saving")
    game_journal.add_edge_alias("@basic_respawn", "{30}Respawning")
    game_journal.add_edge_alias("@basic_diff", "{40}Game difficulty")
    game_journal.add_edge_alias("@basic_green_red", "{50}Green / red rings")
    game_journal.add_edge_alias("@basic_pink", "{60}Pink rings")
    game_journal.add_edge_alias("@basic_blue", "{70}Blue rings")
    game_journal.add_edge_alias("@basic_waypoint", "{80}Waypoints")
    game_journal.add_edge_alias("@basic_marker", "{90}Markers")
    game_journal.add_edge_alias("@basic_telekinesis", "{100}Telekinesis")
    game_journal.add_edge_alias("@basic_xp", "{110}XP and leveling up")
    game_journal.add_edge_alias("@basic_trophy", "{120}Trophies")
    game_journal.add_edge_alias("@basic_hud", "{130}HUD")

    game_journal.add_edge_alias("@basic_respawn_player", "{10}Player respawning")

    game_journal.add_edge_alias("@basic_marker_tracking", "{50}Tracking marker")

    game_journal.add_edge_alias("@basic_trophy_overview", "{10}Overview")
    game_journal.add_edge_alias("@basic_trophy_yw", "{20}Ying world trophies")
    game_journal.add_edge_alias("@basic_trophy_mid", "{30}Midway trophies")
    game_journal.add_edge_alias("@basic_trophy_i1", "{40}I1 trophies")
    game_journal.add_edge_alias("@basic_trophy_i2", "{50}I2 trophies")
    game_journal.add_edge_alias("@basic_trophy_i3", "{60}I3 trophies")
    game_journal.add_edge_alias("@basic_trophy_bur", "{70}Burlington trophies")
    game_journal.add_edge_alias("@basic_trophy_space", "{80}Space trophies")
    game_journal.add_edge_alias("@basic_trophy_bulk", "{90}Bulk trophies")
    game_journal.add_edge_alias("@basic_trophy_my", "{100}Mylantis trophies")
    game_journal.add_edge_alias("@basic_trophy_hell", "{110}Hell trophies")
    game_journal.add_edge_alias("@basic_trophy_nwp", "{120}No waypoint (NWP) trophies")
end

function p.add_category_program_and_console()
    game_journal.add_edge_alias("@prog_cheat", "{10}Cheat codes")
    game_journal.add_edge_alias("@prog_cheat_password", "{10}Cheat code password")

    game_journal.add_edge_alias("@prog_path", "{20}The path command")
    
    game_journal.add_edge_alias("@prog_pathpink", "{30}The pathpink command")
    
    game_journal.add_edge_alias("@prog_own_world", "{40}Create your own world")
end

function p.add_category_wep()
    game_journal.add_edge_alias("@wep_gen", "{10}General")
    game_journal.add_edge_alias("@wep_gen_max", "{20}Maxing out")
    game_journal.add_edge_alias("@wep_plasma", "{20}Plasma")
    game_journal.add_edge_alias("@wep_cannon", "{30}Cannon")
    game_journal.add_edge_alias("@wep_laser", "{40}Laser")
    game_journal.add_edge_alias("@wep_rocket", "{50}Rocket")
    game_journal.add_edge_alias("@wep_homing", "{60}Homing")
    game_journal.add_edge_alias("@wep_mini", "{70}Minigun")
    game_journal.add_edge_alias("@wep_rail", "{80}Railgun")
    game_journal.add_edge_alias("@wep_emp", "{90}EMP")
    game_journal.add_edge_alias("@wep_nuke", "{100}Nuke")
    game_journal.add_edge_alias("@wep_hole", "{110}Dark hole")

    game_journal.add_edge_alias("@wep_plasma_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_plasma_mode_1", "{20}Mode 1: Basic high DPA")
    game_journal.add_edge_alias("@wep_plasma_mode_2", "{30}Mode 2: Rapid fire")
    game_journal.add_edge_alias("@wep_plasma_mode_3", "{40}Mode 3: Plasma shotgun")
    game_journal.add_edge_alias("@wep_plasma_mode_4", "{50}Mode 4: Hyper rapid fire")
    game_journal.add_edge_alias("@wep_plasma_mode_5", "{60}Mode 5: Lightning rifle")
    game_journal.add_edge_alias("@wep_plasma_mode_6", "{70}Mode 6: Flare")
    game_journal.add_edge_alias("@wep_plasma_max", "{80}Maxing out")

    game_journal.add_edge_alias("@wep_cannon_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_cannon_mode_1", "{20}Mode 1: Blunderbuss")
    game_journal.add_edge_alias("@wep_cannon_mode_2", "{30}Mode 2: Tommy gun")
    game_journal.add_edge_alias("@wep_cannon_mode_3", "{40}Mode 3: Chaining cannon ball")
    game_journal.add_edge_alias("@wep_cannon_mode_4", "{50}Mode 4: The sheriff")
    game_journal.add_edge_alias("@wep_cannon_mode_5", "{60}Mode 5: The judge")
    game_journal.add_edge_alias("@wep_cannon_max", "{70}Maxing out")

    game_journal.add_edge_alias("@wep_laser_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_laser_mode_1", "{20}Mode 1: Ice laser")
    game_journal.add_edge_alias("@wep_laser_mode_2", "{30}Mode 2: Cold beam")
    game_journal.add_edge_alias("@wep_laser_mode_3", "{40}Mode 3: Freeze ray")
    game_journal.add_edge_alias("@wep_laser_mode_4", "{50}Mode 4: Laser disco")
    game_journal.add_edge_alias("@wep_laser_max", "{60}Maxing out")

    game_journal.add_edge_alias("@wep_rocket_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_rocket_mode_1", "{20}Mode 1: Basic rockets")
    game_journal.add_edge_alias("@wep_rocket_mode_2", "{30}Mode 2: High velocity rockets")
    game_journal.add_edge_alias("@wep_rocket_mode_3", "{40}Mode 3: Big radius rockets")
    game_journal.add_edge_alias("@wep_rocket_mode_4", "{50}Mode 4: Kinetic rockets")
    game_journal.add_edge_alias("@wep_rocket_mode_5", "{60}Mode 5: Progressive rockets")
    game_journal.add_edge_alias("@wep_rocket_max", "{70}Maxing out")

    game_journal.add_edge_alias("@wep_homing_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_homing_max", "{20}Maxing out")
    
    game_journal.add_edge_alias("@wep_mini_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_mini_max", "{20}Maxing out")
    
    game_journal.add_edge_alias("@wep_rail_gen", "{10}Overview")
    game_journal.add_edge_alias("@wep_rail_loc", "{20}Locations")
    game_journal.add_edge_alias("@wep_rail_mode_1", "{30}Mode 1: Classic railgun")
    game_journal.add_edge_alias("@wep_rail_mode_2", "{40}Mode 2: Rapid railgun")
    game_journal.add_edge_alias("@wep_rail_mode_3", "{50}Mode 3: Vampire railgun")
    game_journal.add_edge_alias("@wep_rail_mode_4", "{60}Mode 4: Super vampire railgun")
    game_journal.add_edge_alias("@wep_rail_max", "{70}Maxing out")
    
    game_journal.add_edge_alias("@wep_emp_gen", "{10}Overview")
    game_journal.add_edge_alias("@wep_emp_loc", "{20}Locations")
    
    game_journal.add_edge_alias("@wep_nuke_loc", "{10}Locations")
    game_journal.add_edge_alias("@wep_nuke_mode_1", "{20}Mode 1: High damage")
    game_journal.add_edge_alias("@wep_nuke_mode_2", "{30}Mode 2: High velocity and radius")
    game_journal.add_edge_alias("@wep_nuke_mode_3", "{40}Mode 3: Nuclear pulse propulsion")
    
    game_journal.add_edge_alias("@wep_hole_gen", "{10}Overview")
    game_journal.add_edge_alias("@wep_hole_loc", "{20}Locations")
    game_journal.add_edge_alias("@wep_hole_mode_1", "{30}Mode 1: Standard fire")
    game_journal.add_edge_alias("@wep_hole_mode_2", "{40}Mode 2: Exchange health for ammo")
    game_journal.add_edge_alias("@wep_hole_mode_3", "{50}Mode 3: Black hole drive")
    game_journal.add_edge_alias("@wep_hole_mode_4", "{60}Mode 4: Quasar drive")
end

function p.add_category_item()
    game_journal.add_edge_alias("@item_health", "{10}Health")
    game_journal.add_edge_alias("@item_rx", "{20}RejuvenX")
    game_journal.add_edge_alias("@item_armor", "{30}Armor")
    game_journal.add_edge_alias("@item_gold", "{40}Gold")
    game_journal.add_edge_alias("@item_white_box", "{50}White box device")
    game_journal.add_edge_alias("@item_yellow_box", "{60}Yellow box device")
    game_journal.add_edge_alias("@item_xp_mod", "{70}XP multiplier")
    game_journal.add_edge_alias("@item_damage_mod", "{80}Damage multiplier") --Used?
    game_journal.add_edge_alias("@item_buysell", "{90}Buy / sell")
    game_journal.add_edge_alias("@item_buysell_blackmar", "{30}Black market")
    game_journal.add_edge_alias("@item_buysell_us", "{40}Upgrade station")
    
    -- game_journal.add_edge_alias("@item_buysell_buynuke", "{20}Buy nuke")

    game_journal.add_edge_alias("@item_health_loc", "{10}Locations")
    
    game_journal.add_edge_alias("@item_armor_loc", "{10}Locations")
    
    game_journal.add_edge_alias("@item_gold_loc", "{10}Locations")
end

function p.add_category_monster()
    game_journal.add_edge_alias("@mon_goblin", "{10}Beware of goblins") --Change num
    game_journal.add_edge_alias("@mon_overseer", "{20}Beware of overseers") --Change num
    game_journal.add_edge_alias("@mon_yin", "{50}Yin-yang") --Change num
    game_journal.add_edge_alias("@mon_ic", "{80}Inner core") --Change num
end

function p.add_category_quest()
    game_journal.add_edge_alias("@quest_yw", "{10}Ying World")
    
    game_journal.add_edge_alias("@quest_mid", "{20}Midway")
    game_journal.add_edge_alias("@quest_mid_find_richmond", "{10}Find richmond")
    game_journal.add_edge_alias("@quest_mid_tau_shrink", "{20}Start your descent down the main branch")
    game_journal.add_edge_alias("@quest_mid_san", "{30}Find a stoney sanctuary")
    game_journal.add_edge_alias("@quest_mid_blackberry", "{40}The secret of the blackberry")
    game_journal.add_edge_alias("@quest_mid_tau_grow", "{50}Side quest: grow out of the tau caves")
    
    game_journal.add_edge_alias("@quest_i1", "{30}I1")
    game_journal.add_edge_alias("@quest_i1_bristol", "{10}Find bristol to go to I2")

    game_journal.add_edge_alias("@quest_i2", "{40}I2")
    game_journal.add_edge_alias("@quest_i2_enteri3", "{10}Enter I3")

    game_journal.add_edge_alias("@quest_i3", "{50}I3") --Used?

    game_journal.add_edge_alias("@quest_my", "{70}Mylantis")
    -- game_journal.add_edge_alias("@quest_my_lasergen", "{10}Laser genesis") --Used?
    game_journal.add_edge_alias("@quest_my_farm", "{20}Secret farmhouse")

    game_journal.add_edge_alias("@quest_hell", "{80}Hell")
    game_journal.add_edge_alias("@quest_hell_key", "{10}Key to the universe")

    game_journal.add_edge_alias("@quest_bur", "{60}Burlington")
    game_journal.add_edge_alias("@quest_bur_combo", "{10}Burlington city combination lock")
end

function p.add_category_area()
    game_journal.add_edge_alias("@area_nav", "{10}General navigation info")

    game_journal.add_edge_alias("@area_lib", "{20}Libraries")
    game_journal.add_edge_alias("@area_lib_lib", "{10}Library library")
    game_journal.add_edge_alias("@area_lib_yw", "{20}Ying world library")
    game_journal.add_edge_alias("@area_lib_rich", "{30}Richmond library")
    game_journal.add_edge_alias("@area_lib_san", "{40}Stoney library")
    game_journal.add_edge_alias("@area_lib_i1", "{50}I1 library")
    game_journal.add_edge_alias("@area_lib_i2", "{60}I2 library")
    game_journal.add_edge_alias("@area_lib_i3", "{70}I3 library")
    game_journal.add_edge_alias("@area_lib_space", "{80}Space library")
    game_journal.add_edge_alias("@area_lib_mb", "{90}Main branch library") --Needed?
    game_journal.add_edge_alias("@area_lib_mc", "{100}Mylantis caves library") --Needed?
    game_journal.add_edge_alias("@area_lib_basement", "{110}Basement library") --Needed?
    game_journal.add_edge_alias("@area_lib_cellar", "{120}Cellar library") --Needed?
    game_journal.add_edge_alias("@area_lib_pink", "{130}Pink library")
    game_journal.add_edge_alias("@area_lib_blue", "{140}Blue library")

    game_journal.add_edge_alias("@area_lib_mc_gen", "{10}Overview")
    game_journal.add_edge_alias("@area_lib_mc_crust", "{20}Crust")
    game_journal.add_edge_alias("@area_lib_mc_wig", "{30}WIG flowers")
    game_journal.add_edge_alias("@area_lib_mc_patch", "{40}Patches")
    game_journal.add_edge_alias("@area_lib_mc_layer", "{50}Layers")
    game_journal.add_edge_alias("@area_lib_mc_silo", "{60}RejuvenX capsules and nuke arsenals")
    game_journal.add_edge_alias("@area_lib_mc_cavern", "{70}Great mylantis cavern")
    game_journal.add_edge_alias("@area_lib_mc_red", "{80}Mylantis red caves")

    game_journal.add_edge_alias("@area_yw", "{30}Ying world")
    --
    game_journal.add_edge_alias("@area_yw_tut", "{10}Tutorial")
    game_journal.add_edge_alias("@area_yw_tut_emer", "{10}Emergency waypoint room")
    --
    game_journal.add_edge_alias("@area_yw_gen", "{20}General")
    --
    game_journal.add_edge_alias("@area_yw_island", "{30}Islands")
    game_journal.add_edge_alias("@area_yw_island_starting", "{10}Starting island")
    game_journal.add_edge_alias("@area_yw_island_big", "{20}Big islands") --Used?
    game_journal.add_edge_alias("@area_yw_island_small", "{30}Small islands (ying cave islands)")
    game_journal.add_edge_alias("@area_yw_island_small_spider", "{20}Spider air is useful")
    game_journal.add_edge_alias("@area_yw_island_gc", "{40}Gated community")
    --
    game_journal.add_edge_alias("@area_yw_forest", "{40}Ying forest")
    game_journal.add_edge_alias("@area_yw_forest_air", "{30}Ying forest air")
    game_journal.add_edge_alias("@area_yw_forest_tower", "{40}Ying tower (unremembered tower)")
    --
    game_journal.add_edge_alias("@area_yw_flower", "{50}Flowers")
    game_journal.add_edge_alias("@area_yw_flower_ying", "{10}Ying flower")
    game_journal.add_edge_alias("@area_yw_flower_yellow", "{20}Small yellow flower")
    game_journal.add_edge_alias("@area_yw_flower_jumbo_yellow", "{30}Jumbo yellow flower")
    --
    game_journal.add_edge_alias("@area_yw_pyr", "{60}Pyramids")
    game_journal.add_edge_alias("@area_yw_pyr_small", "{10}Small cannon pyramid")
    game_journal.add_edge_alias("@area_yw_pyr_large", "{20}Large cannon pyramid")
    game_journal.add_edge_alias("@area_yw_pyr_farm", "{30}Cannon pyramid farm")

    game_journal.add_edge_alias("@area_mid", "{40}Midway")
    --
    game_journal.add_edge_alias("@area_mid_mb", "{10}Main branch")

    game_journal.add_edge_alias("@area_mid_base", "{20}Basements / cellars")
    --
    game_journal.add_edge_alias("@area_mid_tau", "{30}Tau caves")
    --
    game_journal.add_edge_alias("@area_mid_rich", "{40}Richmond")
    game_journal.add_edge_alias("@area_mid_rich_sew", "{10}Richmond sewers")
    --
    game_journal.add_edge_alias("@area_mid_tweed", "{50}Tweedle-dee air")
    --
    game_journal.add_edge_alias("@area_mid_stoney", "{60}Stoney air")
    game_journal.add_edge_alias("@area_mid_stoney_cave", "{20}Stoney caves")
    game_journal.add_edge_alias("@area_mid_stoney_cube", "{30}Yellow cube")
    game_journal.add_edge_alias("@area_mid_stoney_san", "{40}Stoney sanctuary")
    --
    game_journal.add_edge_alias("@area_mid_blackberry", "{70}Blackberry")
    --
    game_journal.add_edge_alias("@area_mid_mossy", "{80}Mossy air")
    --
    game_journal.add_edge_alias("@area_mid_orange", "{90}Orange")
    game_journal.add_edge_alias("@area_mid_orange_hunt", "{10}Huntington")

    game_journal.add_edge_alias("@area_mid_gold", "{100}Golden yellow flower")

    game_journal.add_edge_alias("@area_i1", "{50}I1")
    game_journal.add_edge_alias("@area_i1_mb", "{10}Main branch")
    game_journal.add_edge_alias("@area_i1_bot", "{20}Botany lab")
    game_journal.add_edge_alias("@area_i1_bot_light", "{30}Lighthouse")
    game_journal.add_edge_alias("@area_i1_inf", "{40}Infinity flower")
    game_journal.add_edge_alias("@area_i1_wil", "{50}Williston (cities and fields)")
    game_journal.add_edge_alias("@area_i1_wil_city", "{20}Williston city")
    game_journal.add_edge_alias("@area_i1_wil_field", "{30}Williston field")
    game_journal.add_edge_alias("@area_i1_wil_field_zube", "{40}Zubeneschamali castle")
    game_journal.add_edge_alias("@area_i1_bristol", "{60}Bristol")

    game_journal.add_edge_alias("@area_i2", "{60}I2")
    game_journal.add_edge_alias("@area_i2_city", "{10}Towns / cities")
    -- game_journal.add_edge_alias("@area_i2_city_montreal", "{10}Montreal") --Not being used.
    game_journal.add_edge_alias("@area_i2_city_toronto", "{20}Toronto")
    game_journal.add_edge_alias("@area_i2_city_danville", "{30}Danville")
    game_journal.add_edge_alias("@area_i2_base", "{20}Basements / cellars")
    game_journal.add_edge_alias("@area_i2_flower", "{30}Flowers / trees")
    game_journal.add_edge_alias("@area_i2_flower_weed", "{10}Fanatic weed")
    game_journal.add_edge_alias("@area_i2_flower_spruce", "{20}Spruce tree")
    game_journal.add_edge_alias("@area_i2_flower_sbf", "{30}Small blue flower")
    game_journal.add_edge_alias("@area_i2_flower_willow", "{40}Willow tree")
    game_journal.add_edge_alias("@area_i2_flower_scorpius", "{50}Scorpius flower")
    game_journal.add_edge_alias("@area_i2_fi", "{40}Fanatic island")
    game_journal.add_edge_alias("@area_i2_fi_monster", "{20}The fanatic on the island")
    game_journal.add_edge_alias("@area_i2_lattice", "{50}Fanatic lattice")
    game_journal.add_edge_alias("@area_i2_lattice_radcaves", "{10}Nuke radius caves")
    game_journal.add_edge_alias("@area_i2_vine", "{60}Vines")
    -- game_journal.add_edge_alias("@area_i2_vine_lab", "{10}Labratory vine")
    -- game_journal.add_edge_alias("@area_i2_vine_lab_mini", "{10}Minigun ammo forest")
    game_journal.add_edge_alias("@area_i2_vine_mystic", "{20}Mystic vine")
    game_journal.add_edge_alias("@area_i2_vine_lbv", "{30}Laser branch vine")
    game_journal.add_edge_alias("@area_i2_bubble_cave", "{70}Bubble cave")
    game_journal.add_edge_alias("@area_i2_rasp", "{80}Raspberry")
    game_journal.add_edge_alias("@area_i2_weedrings", "{90}Weed rings")
    game_journal.add_edge_alias("@area_i2_fanspire", "{100}Fanatic spire")
    game_journal.add_edge_alias("@area_i2_creep", "{110}Creeping jeni")

    game_journal.add_edge_alias("@area_i3", "{70}I3")
    game_journal.add_edge_alias("@area_i3_city", "{10}Towns / cities")
    game_journal.add_edge_alias("@area_i3_city_col", "{10}Colchester")
    game_journal.add_edge_alias("@area_i3_base", "{20}Basements / cellars")
    game_journal.add_edge_alias("@area_i3_flower", "{40}Flowers / trees")
    game_journal.add_edge_alias("@area_i3_flower_hof", "{10}Hard orange flower")
    game_journal.add_edge_alias("@area_i3_flower_rmf", "{20}Red maze flower")
    game_journal.add_edge_alias("@area_i3_flower_jack", "{30}Jackfruit")
    game_journal.add_edge_alias("@area_i3_flower_sm", "{40}Salmon mushroom")
    game_journal.add_edge_alias("@area_i3_flower_bm", "{50}Black mushroom")
    game_journal.add_edge_alias("@area_i3_flower_ym", "{60}Yellow mushroom")
    game_journal.add_edge_alias("@area_i3_flower_tan", "{70}Tangerine")
    game_journal.add_edge_alias("@area_i3_main_forest", "{50}Main forest")
    game_journal.add_edge_alias("@area_i3_main_forest_mah", "{10}Mahogany tree")
    game_journal.add_edge_alias("@area_i3_main_forest_mus", "{20}Forest museum")
    game_journal.add_edge_alias("@area_i3_main_forest_river", "{30}River")
    game_journal.add_edge_alias("@area_i3_main_forest_river_sliver", "{20}Deep sliver maze")
    game_journal.add_edge_alias("@area_i3_desert", "{60}Desert")
    game_journal.add_edge_alias("@area_i3_desert_overview", "{10}Overview")
    game_journal.add_edge_alias("@area_i3_desert_aladdin", "{20}Aladdin's cave")
    -- game_journal.add_edge_alias("@area_i3_desert_cave", "{20}Normal cave")

    game_journal.add_edge_alias("@area_bur", "{80}Burlington")
    game_journal.add_edge_alias("@area_bur_cavern", "{10}Great white cavern")
    game_journal.add_edge_alias("@area_bur_cavern_blue_secret", "{20}Blue rings secret")
    game_journal.add_edge_alias("@area_bur_gen", "{20}Burlington overview")
    game_journal.add_edge_alias("@area_bur_combo", "{30}Burlington city combination lock")
    game_journal.add_edge_alias("@area_bur_tegen", "{40}Tegan's garden")
    game_journal.add_edge_alias("@area_bur_apple", "{50}Club green apple")
    game_journal.add_edge_alias("@area_bur_showdown", "{60}Burlington showdown tower")

    game_journal.add_edge_alias("@area_space", "{90}Space")
    game_journal.add_edge_alias("@area_space_moon", "{10}Moons")
    -- game_journal.add_edge_alias("@area_space_moon_mod", "{10}Moon modules")
    game_journal.add_edge_alias("@area_space_moon_gamma", "{30}Gamma moon")
    game_journal.add_edge_alias("@area_space_moon_tau", "{40}Tau cave moon")
    game_journal.add_edge_alias("@area_space_moon_ice", "{50}Ice moon")
    game_journal.add_edge_alias("@area_space_moon_firerate", "{60}Fire rate moon")
    game_journal.add_edge_alias("@area_space_moon_bluering", "{70}Blue ring station")
    game_journal.add_edge_alias("@area_space_planet", "{20}Planets")
    game_journal.add_edge_alias("@area_space_planet_smallmini", "{10}Small minigun planet")
    game_journal.add_edge_alias("@area_space_planet_clay", "{20}Clay planet")
    -- game_journal.add_edge_alias("@area_space_sun", "{30}Sun")
    game_journal.add_edge_alias("@area_space_soloar", "{40}Solar system")
    game_journal.add_edge_alias("@area_space_black_hole", "{50}Supermassive black hole")
    game_journal.add_edge_alias("@area_space_galaxy", "{60}Galaxy")
    game_journal.add_edge_alias("@area_space_lev_2", "{70}Outer space level 2")
    game_journal.add_edge_alias("@area_space_lev_1", "{80}Outer space level 1")
    game_journal.add_edge_alias("@area_space_lev_neg1", "{90}Outer space level -1")
    game_journal.add_edge_alias("@area_space_edge", "{100}Edge of the world")

    game_journal.add_edge_alias("@area_bulk", "{100}Bulk")
    game_journal.add_edge_alias("@area_bulk_where", "{10}Where to find")

    game_journal.add_edge_alias("@area_my", "{110}Mylantis")
    game_journal.add_edge_alias("@area_my_mb", "{10}Main branch")
    game_journal.add_edge_alias("@area_my_lasergen", "{20}Laser genesis planet")
    game_journal.add_edge_alias("@area_my_sponge_beta", "{30}Beta menger sponge")
    game_journal.add_edge_alias("@area_my_city", "{40}Mylantis top city")
    game_journal.add_edge_alias("@area_my_city_room", "{30}Mylantis building rooms")
    game_journal.add_edge_alias("@area_my_caves", "{50}Mylantis caves")
    game_journal.add_edge_alias("@area_my_caves_crust", "{10}Mylantis crust")
    game_journal.add_edge_alias("@area_my_caves_cavern", "{20}Great mylantis cavern")
    game_journal.add_edge_alias("@area_my_topaz", "{60}Topaz")
    game_journal.add_edge_alias("@area_my_iolite", "{70}Iolite")
    game_journal.add_edge_alias("@area_my_jade_museum", "{80}Jade museum")
    game_journal.add_edge_alias("@area_my_emerald", "{90}Emerald")
    game_journal.add_edge_alias("@area_my_denver", "{100}Denver")
    game_journal.add_edge_alias("@area_my_amethyst", "{110}Amethyst maze")

    game_journal.add_edge_alias("@area_hell", "{120}Hell")
    game_journal.add_edge_alias("@area_hell_loc", "{10}Places to find hell") 
    game_journal.add_edge_alias("@area_hell_surface", "{20}Surface of hell")
    game_journal.add_edge_alias("@area_hell_key", "{30}Key to the universe")
    game_journal.add_edge_alias("@area_hell_wolf", "{40}Secret wolf forest")

    game_journal.add_edge_alias("@area_nwp", "{130}No waypoint (NWP)")
    game_journal.add_edge_alias("@area_nwp_base", "{10}Basements / cellars")
    game_journal.add_edge_alias("@area_nwp_ht", "{20}Health tower")
    game_journal.add_edge_alias("@area_nwp_box", "{30}Boxes")
    game_journal.add_edge_alias("@area_nwp_sponge", "{40}Sponges (menger sponges)")
end

function p.add_category_area_lore()
    game_journal.add_edge_alias("@lore_k_plight", "{10}The plight of K")
    game_journal.add_edge_alias("@lore_k_hidden", "{20}K and the hidden world")
    game_journal.add_edge_alias("@lore_k_hidden_esp", "{30}ESP and the hidden world")
    game_journal.add_edge_alias("@lore_k_hidden_esp_cr", "{20}Chinese room")
    game_journal.add_edge_alias("@lore_k_hidden_esp_mult", "{30}Multiple explanations")
    game_journal.add_edge_alias("@lore_k_hidden_melody", "{40}Lost melody phenomenon")
    --Add more to lore_k_hidden_melody: 1) not recording hidden data.
    game_journal.add_edge_alias("@lore_phil", "{30}Philosophy")
    game_journal.add_edge_alias("@lore_fractals", "{40}Fractals")
    game_journal.add_edge_alias("@lore_fractals_f_vs_h", "{10}Flat vs hierarchical worlds")
    game_journal.add_edge_alias("@lore_fractals_comp", "{20}Very large scale computer computations")
    game_journal.add_edge_alias("@lore_random", "{50}Random")
    game_journal.add_edge_alias("@lore_random_rigel", "{10}Rigel's ramblings")
    game_journal.add_edge_alias("@lore_random_people", "{20}Celestial bodies")
    game_journal.add_edge_alias("@lore_random_wep", "{30}Weapons")
    game_journal.add_edge_alias("@lore_random_wep_laser", "{40}Laser")
    game_journal.add_edge_alias("@lore_random_wep_chekhov", "{50}Chekhov grenade launcher")
    game_journal.add_edge_alias("@lore_area", "{60}Areas")
    game_journal.add_edge_alias("@lore_area_yw", "{10}Ying world")
    game_journal.add_edge_alias("@lore_area_i1", "{30}I1")
    game_journal.add_edge_alias("@lore_area_i1_bot", "{10}Botany lab")
    game_journal.add_edge_alias("@lore_area_mb", "{40}Main branch")
    game_journal.add_edge_alias("@lore_area_bulk", "{50}Bulk")
    -- game_journal.add_edge_alias("@lore_area_if", "{40}Infinity flower")
    game_journal.add_edge_alias("@lore_ic", "{70}Inner core")
    game_journal.add_edge_alias("@lore_ic_key", "{20}Key to the universe")
    game_journal.add_edge_alias("@lore_ic_grow", "{30}Growing the onion")
    game_journal.add_edge_alias("@lore_ib", "{80}Inner botany / re-creation")
    game_journal.add_edge_alias("@lore_ib_mylantis", "{30}Mylantis")
    game_journal.add_edge_alias("@lore_ib_wig", "{40}Genesis of the WIG flower")
    game_journal.add_edge_alias("@lore_ib_wep", "{50}Weaponization")
    game_journal.add_edge_alias("@lore_ib_wep_lose", "{10}When re-creation outpaces inner botany")
    game_journal.add_edge_alias("@lore_ib_post_credits", "{60}The big picture")
    game_journal.add_edge_alias("@lore_ib_bcb", "{70}Boston consent bootstrapping")
end

function p.add_category_yang()
    game_journal.add_edge_alias("@yang_intro", "{10}Introduction")
    --

    game_journal.add_edge_alias("@yang_college", "{20}College")
    --
    game_journal.add_edge_alias("@yang_college_1", "{10}How we met")
    game_journal.add_edge_alias("@yang_college_2", "{20}Fractal labs")
    game_journal.add_edge_alias("@yang_college_3", "{30}Alpha and beta theories")
    game_journal.add_edge_alias("@yang_college_4", "{40}Xar laws")
    game_journal.add_edge_alias("@yang_college_5", "{50}Xar laws and the beta theory")
    game_journal.add_edge_alias("@yang_college_6", "{60}The hidden world: not yet")
    game_journal.add_edge_alias("@yang_college_random", "{70}Random")
    game_journal.add_edge_alias("@yang_college_random_museum", "{10}History museum diorama")
    game_journal.add_edge_alias("@yang_college_basement", "{80}Fractal labs basement")
    game_journal.add_edge_alias("@yang_college_halloween", "{90}Halloween party")
    game_journal.add_edge_alias("@yang_college_cabin_after_grad", "{100}Cabin after graduation")

    game_journal.add_edge_alias("@yang_ima", "{30}Starting to work at the IMA")
    --
    game_journal.add_edge_alias("@yang_ima_job_offer", "{10}Job offer for the Inner Mechanization Agency")
    game_journal.add_edge_alias("@yang_ima_start", "{20}Start of job")
    game_journal.add_edge_alias("@yang_ima_encounter", "{30}Bulletin board: the first encounter")
    game_journal.add_edge_alias("@yang_ima_random", "{40}Random")
    game_journal.add_edge_alias("@yang_ima_random_pen", "{10}Purple pen")
    game_journal.add_edge_alias("@yang_ima_random_jane", "{20}Jane")
    game_journal.add_edge_alias("@yang_ima_random_jane_knitting", "{10}Jane's knitting")
    game_journal.add_edge_alias("@yang_ima_random_jane_unverified", "{20}Solving unverified puzzles at work")
    game_journal.add_edge_alias("@yang_ima_random_jane_dinner", "{30}Dinner")
    game_journal.add_edge_alias("@yang_ima_random_jane_verify_team", "{40}Maze solution verification team")
    game_journal.add_edge_alias("@yang_ima_random_tom", "{30}Tom")
    game_journal.add_edge_alias("@yang_ima_random_tom_meet", "{10}Meeting him (and codename sagittarius A*)")
    game_journal.add_edge_alias("@yang_ima_random_tom_int", "{20}The integration engine?")
    game_journal.add_edge_alias("@yang_ima_apt", "{50}Apartment")
    game_journal.add_edge_alias("@yang_ima_apt_mic", "{20}Microwave dinner and dyson swarm")
    game_journal.add_edge_alias("@yang_ima_ic", "{60}Constructing inner cores at work")
    game_journal.add_edge_alias("@yang_ima_ic_disc", "{10}Discovery of inner cores")
    game_journal.add_edge_alias("@yang_ima_rec", "{70}Recreation center")
    game_journal.add_edge_alias("@yang_ima_rec_find", "{10}Finding the recreation center")
    game_journal.add_edge_alias("@yang_ima_floorsearch", "{80}Searching for the extra floors") --Change num.
    game_journal.add_edge_alias("@yang_ima_9floor", "{90}9th floor") --Change num.
    game_journal.add_edge_alias("@yang_ima_9floor_blackhole", "{91}VIP lounge") --Change num.
    
    game_journal.add_edge_alias("@yang_trapped", "{40}Trapped in the hidden world")
    --
    game_journal.add_edge_alias("@yang_trapped_crit", "{10}Critical event")
    game_journal.add_edge_alias("@yang_trapped_rejected", "{20}Rejected from work")
    game_journal.add_edge_alias("@yang_trapped_chem", "{30}Chemicals")
    game_journal.add_edge_alias("@yang_trapped_mem", "{40}Memory failing")
    game_journal.add_edge_alias("@yang_trapped_error", "{50}Universe interfacing errors")
    game_journal.add_edge_alias("@yang_trapped_error_work", "{10}\"Mistakes\" at work")
    game_journal.add_edge_alias("@yang_trapped_error_def", "{20}What was the mechanism for this?")
    game_journal.add_edge_alias("@yang_trapped_error_unif", "{30}Unifying universes in the multiverse")
    game_journal.add_edge_alias("@yang_trapped_youvisit", "{60}You visiting me")
    game_journal.add_edge_alias("@yang_trapped_youvisit_eye", "{10}You looking into my eye")
    game_journal.add_edge_alias("@yang_trapped_youvisit_messenger", "{20}You sent a messenger")

    game_journal.add_edge_alias("@yang_back", "{50}Back to work again")
    game_journal.add_edge_alias("@yang_back_blackhole", "{20}Accessing the VIP lounge")
    game_journal.add_edge_alias("@yang_back_trainwest", "{30}Taking a train out west to see you")
    game_journal.add_edge_alias("@yang_back_trainwest_part1", "{10}Deciding to take the trip")
    game_journal.add_edge_alias("@yang_back_trainwest_part2", "{20}The painting that reminds me of us")
    game_journal.add_edge_alias("@yang_back_trainwest_part3", "{30}The ride out west")
    game_journal.add_edge_alias("@yang_back_trainwest_part4", "{40}Seeing you")
end
