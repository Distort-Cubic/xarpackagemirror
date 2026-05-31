-------------------------------------------------
--       Rendering, Geometry, and Motion
-------------------------------------------------

-- function p.get_radius() return 0.2 end

-------------------------------------------------
--              Damage AND Health
-------------------------------------------------

-- function p.get_getting_hit_type() return "" end
-- function p.get_hitting_type() return "enemy" end

-------------------------------------------------
--            Type Init Function
-------------------------------------------------

function p.__type_init(id)
    ia_ment_set_builtin_var_f(id, "__ttl", -1.0)
    ia_ment_set_builtin_var_s(id, "__mesh", "monster_gremlin_proj")
end
