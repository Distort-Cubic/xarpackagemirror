-------------------------------------------------
--Table of function references.
-------------------------------------------------

local hud_table_initialized = false
local hud_table = {}

--Brute force ability to change the array:
function p.clear_hud_table() hud_table = {} end
function p.get_hud_table() return hud_table end
function p.set_hud_table(new_hud_table) hud_table = new_hud_table end

--Each function takes one argument: the wid.
--No two hud elements can have the same priority.
--The priority specifies the order it is rendered.
--Lowever priorities are rendered first.
function p.add_element(priority, func)
    local element = {}
    element.func = func
    hud_table[priority] = element
    -- table.insert(hud_table, priority, element) --Wrong.
end

function p.remove_element(priority)
    table.remove(hud_table, priority)
end

-------------------------------------------------
--Initializing the list.
-------------------------------------------------

function p.maybe_init_table()
    if hud_table_initialized then return end
    hud_table_initialized = true

    p.force_init_hud_table()
end

function p.force_init_hud_table()
    p.clear_hud_table()
    p.add_element(-10, blinker_test.render)
    p.add_element(10, game_hud_render_dark_hole_charge.render_dark_hole_charge)
    p.add_element(20, game_hud_render_low_health_border.render_low_health_border)
    p.add_element(30, game_hud_render_compass.render_compass)
    p.add_element(40, game_hud_render_dps.render_dps)
    p.add_element(50, game_hud_render_identified_ment.render_identified_ment)
    p.add_element(60, game_hud_render_hive_attack_meter.render_hive_attack_meter)
    p.add_element(70, game_hud_render_shield.render_shield)
    p.add_element(80, game_hud_render_health.render_health)
    p.add_element(90, game_hud_render_armor.render_armor)
    p.add_element(100, game_hud_render_gold.render_gold)
    p.add_element(110, game_hud_render_markers.render_markers)
    p.add_element(120, game_hud_render_xp_bar.render_xp_bar)
    p.add_element(130, game_hud_render_icons.render_icons)
    p.add_element(140, game_hud_render_ammo.render_ammo)
    p.add_element(150, game_hud_render_lower_left_msg.render_lower_left_msg)
    p.add_element(160, game_hud_render_flash.render_flash)
end

-------------------------------------------------
--Window functions.
-------------------------------------------------

--Helper.
function p.txt_col(wid, col)
    ga_win_set_front_color(wid, col)
end

function p.interp_col(col1, col2, frac)
    local col = {x=0, y=0, z=0}
    col.x = (1.0 - frac)*col1.x + frac*col2.x
    col.y = (1.0 - frac)*col1.y + frac*col2.y
    col.z = (1.0 - frac)*col1.z + frac*col2.z
    return col
end

function p.__render(wid)
    if( ga_get_b("xar.hud.disable_hud") ) then return end

    if( ga_get_b("xar.cheat.inf2.enabled") ) then
        --Infinifrag2 Easter egg.
        game_inf2.hud_render(wid)
        return
    end

    p.maybe_init_table()

    --Calling all functions in the table (in order).
    local sorted_keys = {}
    for k,v in pairs(hud_table) do
        table.insert(sorted_keys, k)
    end
    table.sort(sorted_keys)
    for _,k in pairs(sorted_keys) do
        local v = hud_table[k]
        local func = v.func
        func(wid)
    end

    --Debugging the "look object."
    -- local use_type = ga_use_object_get_type()
    -- ga_win_txt(wid, 0.4, 0.7, "use obj type = " .. tostring(use_type))
    -- if( ga_look_object_bent_exists() ) then
    --     local look_bent_chunk_id = ga_look_object_bent_get_chunk_id()
    --     local look_bent_lbp = ga_look_object_bent_get_lbp()
    --     ga_win_txt(wid, 0.1, 0.6, "look bent chunk_id = " .. tostring(look_bent_chunk_id))
    --     ga_win_txt(wid, 0.6, 0.6, "look bent lbp = " .. std.bp_to_str(look_bent_lbp))
    -- end
    -- if( ga_look_object_ment_exists() ) then
    --     local look_ment_inst_id = ga_look_object_ment_inst_id()
    --     ga_win_txt(wid, 0.5, 0.5, "look ment inst_id = " .. tostring(look_ment_inst_id))
    -- end
    -- if( ga_look_object_block_exists() ) then
    --     local look_block_chunk_id = ga_look_object_block_get_chunk_id()
    --     local look_block_lbp = ga_look_object_block_get_lbp()
    --     ga_win_txt(wid, 0.1, 0.4, "look block chunk_id = " .. tostring(look_block_chunk_id))
    --     ga_win_txt(wid, 0.6, 0.4, "look block lbp = " .. std.bp_to_str(look_block_lbp))
    -- end
end
