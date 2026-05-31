function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__type_init(id)
    --The api name of the trophy.
    --It should NOT start with "trophy_".
    ia_block_new_var_s(id, "api_name", "")
    ia_block_new_var_i(id, "reg_countdown", 0) --Get rid of eventually.
end

function p.__main()
    set_default_block("block_e")
end

function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Trophy"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.__on_close(level, bp)
    p.payload(level, bp)
end

function p.on_telekinesis(level, bp)
    p.payload(level, bp)
end

function p.payload(level, bp)
    --Gaining the trophy.
    local api_name = ga_block_get_s(level, bp, "api_name")
    if( api_name == "" ) then
        ga_print("*** Error: api_name is empty in block_xar_trophy")
        return
    end
    game_trophy.pickup(api_name)
    --Removing the block.
    -- local five_minutes = 5 * 60 --So can pick up again in case of an issue.
    -- ga_block_change_rl(level, bp, "block_e", five_minutes)
    ga_block_change_perm(level, bp, "block_e")
end

--Get rid of eventually!!!
function p.__on_block_update(level, bp)
    --We use the countdown var so we call
    --game_telekinesis.reg_block_target only about twice a second.
    local countdown = ga_block_get_i(level, bp, "reg_countdown")
    countdown = countdown - 1
    ga_block_set_i(level, bp, "reg_countdown", countdown)
    if( countdown > 0 ) then return end
    --Countdown must be <= 0.
    --Resetting the countdown and registering the block.
    ga_block_set_i(level, bp, "reg_countdown", 12)
    game_telekinesis.reg_block_target(level, bp)
end

function p.__on_render(level, bp)
    if( level ~= ga_get_viewer_level() ) then return end

    --Creating the classic "pulsating" look.
    local cur_time = ga_get_game_time()
    scale = 1.0 + math.cos(6.0 * cur_time) * 0.1
    ga_render_matrix_scaled(scale, scale, scale);
    --
    local mesh_name = "trophy"
    ga_render_mesh(mesh_name)
end
