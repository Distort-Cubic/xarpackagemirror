function p.__get_is_solid() return false end
function p.__get_tex() return "" end

--The need for this block is annoying.
--We need it to pass the Burlington City Combo string
--from C++ worldgen code to the Lua journal.

function p.__type_init(id)
    --The api name of the text.
    --It should NOT start with "journal_".
    ia_block_new_var_s(id, "combo_str", "") --Will be set.
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
    return "Read text"
end

function p.__on_use(level, bp)
    ga_play_sound_menu("use")
    local combo_str = ga_block_get_s(level, bp, "combo_str")
    --
    --Passing data to journal system.
    ga_set_s("xar.bur_city_combo", combo_str)
    --
    --String to render in textbox window.
    local str = "^xff00ffThe combination for the \"Burlington City Lock\" is:\n\n"
        .. combo_str
    --
    game_journal.unlock("bur_city_combo_cb") --Test this.
    --
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
    local mesh_name = "txt_box"
    ga_render_mesh(mesh_name)
end
