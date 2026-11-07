--File: ment_player_proj_plasma_1.lua

-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    game_ment_type_init.player_proj(id)
    ia_ment_set_builtin_var_f(id, "__ttl", 20.0)
    ia_ment_set_builtin_var_f(id, "__radius", 0.1)
    ia_ment_set_builtin_var_s(id, "__mesh", "plasma1")
    ia_ment_new_static_var_b(id, "identifies", true)
end

-------------------------------------------------
--         Movement Hitting Callbacks
-------------------------------------------------

function p.__on_ment_hit(
    source_inst_id,
    target_inst_id,
    level, lp, normal)
--
    p.debug_gold_bullet_hit(target_inst_id) --TAKE THIS OUT!!!

    local args = {}
    args.source_inst_id = source_inst_id
    args.target_inst_id = target_inst_id
    args.level = level
    args.lp = lp
    args.normal = normal
    --
    local ret = game_ment_hit.process_hit_and_got_hit(args)
    return ret.terminal_hit
end

function p.__on_block_hit(
    inst_id,
    level, bp, lp,
    normal_side, normal)
--
    local start_level = ga_ment_get_i(inst_id, "__start_level")
    local sllp = ga_convert_lp(level, start_level, lp).value

    --Sparks.
    for i = 0,5 do
        dir = {}
        dir.x = normal.x + (ga_randf() - 0.5)
        dir.y = normal.y + (ga_randf() - 0.5)
        dir.z = normal.z + (ga_randf() - 0.5)

        --New way:
        local args = {}
        args.level = start_level
        args.pos = sllp
        args.ttl = 1.0
        args.size = 0.2
        args.color = std.vec(1.0, 1.0, 1.0)
        args.fade_time = 0.5
        args.vel = std.vec_scale(dir, 0.5)
        args.tex = "particle_2"
        args.use_min_dist = false
        ga_particle_add(args)
    end

    return true
end

-------------------------------------------------
--                  Debugging
-------------------------------------------------

--This is for a debug mod where we remove a monster
--(that was originally created from worlgen)
--using only its starting path and its code id
--(stone cold murder).

local m_dead_man_walking_exists = false
local m_dead_man_walking_source_path = ""
local m_dead_man_walking_code_id = 0
local m_dead_man_walking_respawn_time = 0

--Note: dmw = "dead man walking".
function p.get_dmw_exists() return m_dead_man_walking_exists end
function p.get_dmw_source_path() return m_dead_man_walking_source_path end
function p.get_dmw_code_id() return m_dead_man_walking_code_id end
function p.get_dmw_respawn_time() return m_dead_man_walking_respawn_time end
function p.clear_dmw() m_dead_man_walking_exists = false end

--The inst_id is the monster being hit (the target).
function p.debug_gold_bullet_hit(inst_id)
    local type_name = ga_ment_get_type(inst_id)
    if( type_name == "player_hit_sphere" ) then return end
    --
    ga_print("\nment_player_proj_plasma_1.debug_gold_bullet_hit (buffy)")
    ga_print("  dmw inst_id: " .. tostring(inst_id))
    m_dead_man_walking_exists = true
    m_dead_man_walking_source_path = ga_ment_get_source_path(inst_id)
    m_dead_man_walking_code_id = ga_ment_inst_id_to_code_id(inst_id)
    m_dead_man_walking_respawn_time = ga_get_game_time() + 60*60
    --
    -- --Debugging.
    -- ga_print("debug_gold_bullet_hit: ment_path   = " .. ga_chunk_id_to_path(ga_ment_get_chunk_id(inst_id)))
    -- ga_print("debug_gold_bullet_hit: source_path = " .. m_dead_man_walking_source_path)
    -- local chunk_id = ga_path_to_chunk_id(m_dead_man_walking_source_path)
    -- local cc_id = ga_cc_open_by_path(m_dead_man_walking_source_path)
    local code_id = ga_ment_inst_id_to_code_id(inst_id)
    ga_print("debug_gold_bullet_hit: code_id = " .. code_id)
end
