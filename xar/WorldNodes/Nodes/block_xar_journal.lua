function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__type_init(id)
    --The api name of the text.
    --It should NOT start with "journal_".
    ia_block_new_var_s(id, "api_name", "")
end

function p.__main()
    set_default_block("block_e")
end

function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if( dist < 1.0 ) then return false end
    return true
end

function p.__get_use_msg(level, bp)
    if( not p.__get_can_use(level, bp, dist) ) then return "" end
    return "Read text" --Could say "read new text" if not in journal.
end

function p.__on_use(level, bp)
    ga_play_sound_menu("use")
    local api_name = ga_block_get_s(level, bp, "api_name")
    -- ga_print("block_xar_journal: api_name = " .. api_name)
    --
    game_journal.unlock(api_name) --Test this.
    --
    local chunk_id = ga_bp_to_parent_chunk_id(level, bp)
    local str = game_journal.get_txt(api_name, chunk_id)
    ga_create_s("temp.base.textbox_text")
    ga_set_s("temp.base.textbox_text", str)
    ga_window_push("win_base_txt")
end

function p.__on_render(level, bp)
    if( level ~= ga_get_viewer_level() ) then return end

    --Creating the classic "pulsating" look.
    local cur_time = ga_get_game_time()
    scale = 1.0 + math.cos(6.0 * cur_time) * 0.1
    ga_render_matrix_scaled(scale, scale, scale);
    --
    -- local mesh_name = "txt_not_yet_added"
    local mesh_name = "txt_box"
    ga_render_mesh(mesh_name)
end
