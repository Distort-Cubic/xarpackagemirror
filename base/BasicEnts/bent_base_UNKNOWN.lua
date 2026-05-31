function p.__get_mesh() return "bent_base_unknown" end

function p.__on_use(level, bp)
    --Identical to a text box.
    local str = ga_bent_get_param_s(level, bp)
    ga_set_s("base.textbox_text", str)
    ga_window_push("txt")
end
