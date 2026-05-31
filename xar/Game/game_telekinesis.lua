--File: game_telekinesis.lua

-------------------------------------------------

p.all_array = {}
p.all_array[#p.all_array + 1] = "stone_corral"
p.all_array[#p.all_array + 1] = "huntington"
p.all_array[#p.all_array + 1] = "starksboro"
p.all_array[#p.all_array + 1] = "desert_flower_cloud"
p.all_array[#p.all_array + 1] = "tangerine"
p.all_array[#p.all_array + 1] = "super_massive_black_hole"
p.all_array[#p.all_array + 1] = "top_of_world"
p.all_array[#p.all_array + 1] = "absolute_infinite"
p.all_array[#p.all_array + 1] = "secret_farmhouse"
p.all_array[#p.all_array + 1] = "main_branch_lib"
p.all_array[#p.all_array + 1] = "mylantis_great_cavern"
p.all_array[#p.all_array + 1] = "beta_sponge"
--May add more later.

p.upgrade_to_display = {}
p.upgrade_to_display["stone_corral"]                = "Stone Corral (Richmond, in Midway)"
p.upgrade_to_display["huntington"]                  = "Huntington (Midway)"
p.upgrade_to_display["starksboro"]                  = "Starksboro (I3)"
p.upgrade_to_display["desert_flower_cloud"]         = "Desert Flower Secret (I3)"
p.upgrade_to_display["tangerine"]                   = "Tangerine (I3)"
p.upgrade_to_display["super_massive_black_hole"]    = "Super Massive Black Hole (Space)"
p.upgrade_to_display["top_of_world"]                = "Top of the World"
p.upgrade_to_display["absolute_infinite"]           = "Absolute Infinite"
p.upgrade_to_display["secret_farmhouse"]            = "Secret Farmhouse"
p.upgrade_to_display["main_branch_lib"]             = "Main Branch Library (Mylantis)"
p.upgrade_to_display["mylantis_great_cavern"]       = "Mylantis Great Cavern (Mylantis)"
p.upgrade_to_display["beta_sponge"]                 = "Beta Menger Sponge (Mylantis)"

-- Being explicit.
function p.get_all_array()
    return p.all_array
end

--Being explicit.
function p.get_upgrade_display_table()
    return p.upgrade_to_display
end

function p.api_name_to_env_var(api_name)
    return "game.globals.xar.player.telekinesis." .. api_name
end

function p.has_upgrade(api_name)
    return ga_get_b( p.api_name_to_env_var(api_name) )
end

function p.get_num_upgrades()
    local count = 0
    for _,v in pairs(p.all_array) do
        local value = p.has_upgrade(v)
        if( value ) then count = count + 1 end
    end
    return count
end

-------------------------------------------------
-- Free telekinesis cooldowns.

function p.get_free_cooldown_base()
    return 30 --In seconds.
end

function p.get_free_cooldown_delta()
    return p.get_num_upgrades()
end

function p.get_free_cooldown()
    local base = p.get_free_cooldown_base()
    local delta = p.get_free_cooldown_delta()
    return base - delta
end

-------------------------------------------------

function p.get_radius_base()
    return 24 --In blocks.
end

function p.get_radius_delta()
    return p.get_num_upgrades()
end

function p.get_radius()
    local base = p.get_radius_base()
    local delta = p.get_radius_delta()
    return base + delta
end

-------------------------------------------------
--          Applying telekinesis effect
-------------------------------------------------

function p.payload()
    local game_time = ga_get_game_time()
    local last_free_tele_time = ga_get_f("xar.input.last_free_telekinesis_time")
    local tele_cooldown_len = p.get_free_cooldown()

    local is_tele_free = (game_time > last_free_tele_time + tele_cooldown_len)

    --Making sure if have enough gold.
    local gold = ga_get_i("xar.player.gold.amount")
    if( gold < 5 ) then
        game_msg.add("Not enough gold for telekinesis")
        return
    end
    --Will apply telekinesis.
    --Technically there is an explot if the player's
    --gold is between 5 and 9 inclusive and they are doing
    --a pickup that costs 10 gold, but who cares.

    if( is_tele_free ) then
        ga_play_sound("telekinesis_free")
    else
        ga_play_sound("telekinesis")
    end

    --Note: the player can use telekinesis even if they have no gold.
    local gold_before = ga_get_i("xar.player.gold.amount")
    local num_picked_up1 = p.main_helper1() --Actually picking stuff up.
    local num_picked_up2 = p.main_helper2() --Actually picking stuff up.
    local num_picked_up = num_picked_up1 + num_picked_up2
    local gold_after = ga_get_i("xar.player.gold.amount")
    local gold_diff = gold_after - gold_before

    --Calculating the gold cost.

    local gold_only_cost = 0
    if    ( gold_diff < 40  ) then gold_only_cost = 5
    elseif( gold_diff < 80  ) then gold_only_cost = 6
    elseif( gold_diff < 120 ) then gold_only_cost = 7
    elseif( gold_diff < 160 ) then gold_only_cost = 8
    elseif( gold_diff < 200 ) then gold_only_cost = 9
    else                           gold_only_cost = 10
    end
    --
    local count_only_cost = 0
    if    ( num_picked_up < 5  ) then count_only_cost = 5
    elseif( num_picked_up < 10 ) then count_only_cost = 6
    elseif( num_picked_up < 15 ) then count_only_cost = 7
    elseif( num_picked_up < 20 ) then count_only_cost = 8
    elseif( num_picked_up < 25 ) then count_only_cost = 9
    else                              count_only_cost = 10
    end

    local final_cost = math.max(gold_only_cost, count_only_cost)
    if( is_tele_free ) then final_cost = 0 end
    local gold_after_pay = gold_after - final_cost
    if( gold_after_pay < 0 ) then gold_after_pay = 0 end --In case of exploit.

    --Actually paying the gold.
    ga_set_i("xar.player.gold.amount", gold_after_pay)

    if( is_tele_free ) then
        ga_set_f("xar.input.last_free_telekinesis_time", game_time)
    end
end

--Picking up basic entities.
function p.main_helper1()
    local count = 0 --How many bents were picked up.

    local level = ga_get_viewer_level()
    local lp = ga_get_viewer_offset()
    -- local radius = 16.0 --Important.
    local radius = p.get_radius()
    local ents = ga_bent_sphere_query(level, lp, radius) --MORE!!!
    for k,v in pairs(ents) do
        local dist = v.dist
        local bp = v.bp

        --Checking for visibility.
        local block_center = std.block_center(bp)
        local visible = ga_vis_test_level(level, lp, block_center)

        if( visible ) then
            --Calling telekinesis.
            local type = ga_bent_get_type(level, bp)
            local mod_name = type
            local func_name = "on_telekinesis"
            if( std.mod_func_exists(mod_name, func_name) ) then
                --The BEnt DOES have a on_telekinesis function.
                _G[mod_name][func_name](level,bp)
            end
            --Seeing if picked it up.
            local bent_type_after = ga_bent_get_type(level, bp)
            if( bent_type_after == "" ) then count = count + 1 end
        end
    end
    return count
end

--Picking up blocks.
function p.main_helper2()
    local count = 0 --How many bents were picked up.

    local radius = p.get_radius()
    -- ga_print("radius = " .. tostring(radius))

    local viewer_level = ga_get_viewer_level()
    local min_level = viewer_level
    local max_level = viewer_level
    local sphere_center = ga_get_viewer_offset()

    local data = ga_chunk_id_sphere_query(
        viewer_level, min_level, max_level,
        sphere_center, --On level viewer_level
        radius)
    for i = 1,#data do
        local chunk_id = data[i].chunk_id
        count = count + p.main_helper2_process_chunk(chunk_id, radius)
    end
    return count
end

function p.main_helper2_process_chunk(chunk_id, radius)
    local count = 0

    --Getting all the block targets within the chunk.
    --This should be replaced with an engine function
    --(get all blocks of chunk with a certain "tag")!!!!!!!
    local targets = p.block_list_targets_within_chunk(chunk_id)
    if( #targets <= 0 ) then return count end

    local level = ga_get_viewer_level()
    local center_lp = ga_get_viewer_offset()

    for i = 1,#targets do
        local lbp_hash = targets[i]
        local lbp = ga_lbph_to_lbp(lbp_hash)
        local bp = ga_chunk_id_and_lbp_to_bp(chunk_id, lbp)
        local block_center = std.block_center(bp)

        local dist = std.dist(center_lp, block_center)
        local close = (dist < radius)

        local visible = ga_vis_test_level(level, center_lp, block_center) --Slow.

        if( close and visible ) then
            --Calling telekinesis.
            local bt = ga_bp_to_bt(level, bp)
            local mod_name = bt
            local func_name = "on_telekinesis"
            if( std.mod_func_exists(mod_name, func_name) ) then
                --The block DOES have a on_telekinesis function.
                _G[mod_name][func_name](level,bp)
            end
            --Seeing if picked it up.
            local new_bt = ga_bp_to_bt(level, bp)
            if( new_bt ~= bt ) then
                --Could be a better check.
                count = count + 1
            end
        end
    end

    return count
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
--                               Begin pain
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--This will be removed at some point
--when something is added to the engine.

-------------------------------------------------
--             Block target API
-------------------------------------------------
--This is painful.
--Blocks (in the active chunk tree)
--that can be picked up with telekinesis
--must register them themselves as a target at least
--once per second.
--This is because there is no fast way to query
--for all blocks nearby that can be picked up
--with telekinesis.

--Maybe we want the engine to have the following feature:
--Blocks can declare themselves as having speical
--"string tags".  Chunks will automatically know which
--blocks in themselves have which special tag.

--Registering a local block position of a chunk
--as a telekinesis target.
--This should be called from the __on_block_update function
--of every block which can be picked up with telekinesis.
function p.reg_block_target(level, bp)
    local viewer_level = ga_get_viewer_level()
    if( level ~= viewer_level ) then
        --Telekinesis only applies to blocks on the viewer's level.
        return
    end
    local lbp      = ga_bp_to_lbp(bp)
    local lbp_hash = ga_lbp_to_lbph(lbp) --Could also use "std.lbp_to_lbph".
    local chunk_id = ga_bp_to_parent_chunk_id(level, bp)

    -- ga_print("Here in game_telekinesis.reg_block_target: " .. tostring(chunk_id) .. " " .. tostring(lbp_hash))
    -- p.block_list_dump()

    --Seeing if it is already in the list.
    local num_slots = p.block_list_get_num_slots()
    local match_index = p.block_list_find_slot_by_block(chunk_id, lbp_hash)
    if( match_index > 0 ) then
        --It is already in the list.
        --This will update the time that is stored in the slot.
        p.block_list_write_to_slot(match_index, chunk_id, lbp_hash)
        return
    end
    --Trying to add to a free slot.
    for i = 1,num_slots do
        local slot_is_free = p.block_list_is_slot_free(i)
        if( slot_is_free ) then
            p.block_list_write_to_slot(i, chunk_id, lbp_hash)
            return
        end
    end
    --There are no free slots.
    --We need to add a new slot to the end.
    p.block_list_push_back(chunk_id, lbp_hash)
end

--This should be called once per discrete update
--just to clean things up.
function p.update_block_targets()
    local num_slots = p.block_list_get_num_slots()
    if( num_slots <= 0 ) then return end
    --
    --Setting old slots as being free.
    local game_time = ga_get_game_time()
    for i = 1,num_slots do
        local is_free = p.block_list_is_slot_free(i)
        --Lua has no continue statement.
        if not is_free then
            local var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".game_time"
            local slot_time = ga_get_f(var1)
            if( math.abs(slot_time - game_time) > 1 ) then
                --We use the abs function because we are afraid of time travel.
                --It has been at least one second since the slot was updated.
                --Setting the slot as being free.
                local var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
                ga_set_i(var2, -1)
            end
        end
    end
    --Popping all trailing free slots.
    p.block_list_pop_all_trailing_free_slots()
end

-------------------------------------------------
--            Block target helpers
-------------------------------------------------
--Do NOT call these from outside this script.

--Note: We could store the data as local variables of this slot,
--but instead we are using "temp" global variables.

function p.block_list_get_num_slots()
    local var = "temp.telekinesis.blocks.num_slots"
    if( not ga_exists(var) ) then
        ga_init_i(var, 0)
    end
    return ga_get_i(var)
end

function p.block_list_is_slot_free(i)
    local var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
    local var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".lbp_hash"
    local var3 = "temp.telekinesis.blocks." .. tostring(i) .. ".game_time"
    if( not ga_exists(var1) ) then return true end
    if( not ga_exists(var2) ) then return true end
    if( not ga_exists(var3) ) then return true end
    if( ga_get_i(var1) < 0 ) then return true end
    return false
end

function p.block_list_dump()
    local str = "game_telekinesis.block_list_dump: ("
    local num_slots = p.block_list_get_num_slots()
    for i = 1,num_slots do
        local is_free = p.block_list_is_slot_free(i)
        if( is_free ) then
            str = str .. "0"
        else
            str = str .. "1"
        end
    end
    str = str .. ")"
    ga_print(str)
end

function p.block_list_pop_all_trailing_free_slots()
    --We keep popping one of the end until we cannot.
    while( true ) do
        local popped_one = p.block_list_pop_last_slot_maybe()
        if( not popped_one ) then return end
    end
end

--If the last slot is free we pop it and return true.
--Otherwise, we return false.
function p.block_list_pop_last_slot_maybe()
    local num_slots = p.block_list_get_num_slots()
    if( num_slots <= 0 ) then return false end --We did not pop.
    local last_slot_free = p.block_list_is_slot_free(i)
    if( not last_slot_free ) then return false end --We did not pop.
    --We don't need to actually remove the variables of the
    --i-th slot because "temp" variables are not saved when we save the game.
    --Popping.
    ga_set_i("temp.telekinesis.blocks.num_slots", num_slots-1)
    return true --We DID pop.
end

--This returns -1 if the slot cannot be found.
function p.block_list_find_slot_by_block(chunk_id, lbp_hash)
    local num_slots = p.block_list_get_num_slots()
    for i = 1,num_slots do
        var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
        var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".lbp_hash"
        if( ga_exists(var1) and
            ga_exists(var2) and
            ga_get_i(var1) == chunk_id and
            ga_get_i(var2) == lbp_hash )
        then
            --We got a match.
            return i
        end
    end
    return -1 --We did not find a match.
end

--Writing to slot i.
function p.block_list_write_to_slot(i, chunk_id, lbp_hash)
    local game_time = ga_get_game_time()
    local var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
    local var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".lbp_hash"
    local var3 = "temp.telekinesis.blocks." .. tostring(i) .. ".game_time"
    ga_set_i(var1, chunk_id)
    ga_set_i(var2, lbp_hash)
    ga_set_f(var3, game_time)
end

function p.block_list_push_back(chunk_id, lbp_hash)
    local num_slots = p.block_list_get_num_slots()
    local i = num_slots + 1
    ga_set_i("temp.telekinesis.blocks.num_slots", i)
    local var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
    local var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".lbp_hash"
    local var3 = "temp.telekinesis.blocks." .. tostring(i) .. ".game_time"
    ga_init_i(var1, -1)
    ga_init_i(var2, -1)
    ga_init_f(var3, -1.0)
    p.block_list_write_to_slot(i, chunk_id, lbp_hash)
end

--Slow as hell.
function p.block_list_targets_within_chunk(chunk_id)
    local ret = {}
    --
    local num_slots = p.block_list_get_num_slots()
    for i = 1,num_slots do
        local var1 = "temp.telekinesis.blocks." .. tostring(i) .. ".chunk_id"
        local var2 = "temp.telekinesis.blocks." .. tostring(i) .. ".lbp_hash"
        local slot_chunk_id = ga_get_i(var1)
        if( slot_chunk_id >= 0 and
            slot_chunk_id == chunk_id )
        then
            local lbp_hash = ga_get_i(var2)
            -- ga_print("adding block tele target:" .. tostring(lbp_hash))
            ret[#ret+1] = lbp_hash
        end
    end
    --
    return ret
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
--                               End pain
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
