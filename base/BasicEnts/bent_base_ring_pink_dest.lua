function p.__get_mesh() return "sphere_pink" end
function p.__get_pulsates() return false end
function p.__get_scale() return 0.7 end

function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    return (dist > 2.0)
end

function p.__on_use(level, bp)
    str =
        "This is a ^xff00ffPink Sphere^!. \n\n" ..
        "^xff0000You cannot use this entity.^!\n\n" ..
        "When you use ^xff00ffPink Rings^!, " ..
        "you will become larger and will be teleported " ..
        "to one of these pink spheres.\n\n" ..
        "More precisely, using Pink Rings causes you to move " ..
        "closer to the root of the chunk tree " ..
        "until you reach a chunk with a Pink Sphere. "
    ga_create_s("temp.base.textbox_text")
    ga_set_s("temp.base.textbox_text", str)
    ga_window_push("win_base_txt")
end
