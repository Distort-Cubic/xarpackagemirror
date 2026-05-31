-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    ia_ment_set_builtin_var_f(id, "__ttl", -1.0)
    ia_ment_set_builtin_var_f(id, "__respawn_length", 60)
    ia_ment_set_builtin_var_i(id, "__extra_min_levels", 0)
    ia_ment_set_builtin_var_i(id, "__extra_max_levels", 0)
    ia_ment_set_builtin_var_f(id, "__radius", 0.75)
    ia_ment_set_builtin_var_s(id, "__mesh", "ment_tegan_monster_gremlin")
    ia_ment_set_builtin_var_b(id, "__solid_wrt_player", true)
    ia_ment_set_builtin_var_f(id, "__turn_speed", 0.5)
    ia_ment_set_builtin_var_b(id, "__turn_towards_player", true)
    ia_ment_set_builtin_var_b(id, "__homing", false)
    ia_ment_set_builtin_var_i(id, "__team_id_source", 0)
    ia_ment_set_builtin_var_i(id, "__team_id_target", 2)
    --
    ia_ment_new_var_i(id, "armor", 20, 60.0) --20 Armor, resets everty 60 secs.
end
