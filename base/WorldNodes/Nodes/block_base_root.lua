function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("e")
    set_pos(0,0,0,"s")
    set_pos(0,0,15,"s")
    set_pos(0,15,0,"s")
    set_pos(0,15,15,"s")
    set_pos(15,0,0,"s")
    set_pos(15,0,15,"s")
    set_pos(15,15,0,"s")
    set_pos(15,15,15,"s")
end
