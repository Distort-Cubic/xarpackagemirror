-------------------------------------------------------------------------------
--                                Block Creation
-------------------------------------------------------------------------------

--Creates a box of blocks in the center of the chunk.
function p.create_center(diam, bt_str)
    p.create_center_c( diam, bt_str_to_code(bt_str) )
end

--The "block type is an integer" version.
--Note: carbo star lemons and xenobeam suggested the following
--alternate code for create_center.
function p.create_center_c(diam, bt_int)
    if diam >= 1 and diam <= 13 then
        local half = (diam - 1) >> 1
        local x1 = 7 - half
        local x2 = 7 + half
        if diam % 2 == 0 then
            x2 = x2 + 1
        end
        create_rect_c(bt_int, x1,x1,x1, x2,x2,x2)
    end
end
--This is what create_center does (with a given diameter):
-- 1  -> create_rect(bt, 7,7,7, 7,7,7)
-- 2  -> create_rect(bt, 7,7,7, 8,8,8)
-- 3  -> create_rect(bt, 6,6,6, 8,8,8)
-- 4  -> create_rect(bt, 6,6,6, 9,9,9)
-- 5  -> create_rect(bt, 5,5,5, 9,9,9)
-- 6  -> create_rect(bt, 5,5,5, 10,10,10)
-- 7  -> create_rect(bt, 4,4,4, 10,10,10)
-- 8  -> create_rect(bt, 4,4,4, 11,11,11)
-- 9  -> create_rect(bt, 3,3,3, 11,11,11)
-- 10 -> create_rect(bt, 3,3,3, 12,12,12)
-- 11 -> create_rect(bt, 2,2,2, 12,12,12)
-- 12 -> create_rect(bt, 2,2,2, 13,13,13)
-- 13 -> create_rect(bt, 1,1,1, 13,13,13)

--Creates a tube the the given radius
--along either the x,y or z axis.
--
--To do: Make the code look nice!
--Note a fancy way to do this is to have a virtual
--block coordinate (i,j,k) and turn it into an
--actual block coordinate (x,y,z) after specifying
--some direction.
--However we don't want to impose such a virtual system
--in the base package.
--Credit here goes to carbo star lemons.
function p.create_tube(diam, axis, bt_str)
    p.create_tube_c( diam, axis, bt_str_to_code(bt_str) )
end

--The "block type is an integer" version.
function p.create_tube_c(diam, axis, bt_int)
    if diam >= 1 and diam <= 6 then
        local half = (diam - 1) >> 1
        local k1 = 7 - half
        local k2 = 7 + half
        
        if diam % 2 == 0 then
            k2 = k2 + 1
        end
        
        if(     axis == "x" ) then create_rect_c(bt_int, 0,k1,k1, 15,k2,k2)
        elseif( axis == "y" ) then create_rect_c(bt_int, k1,0,k1, k2,15,k2) 
        elseif( axis == "z" ) then create_rect_c(bt_int, k1,k1,0, k2,k2,15) end
    end
end

--Creates a "half tube" from one wall
--of the chunk to the center of the chunk.
--See the comment about create_tube on how to rewrite this.
--Credit here goes to carbo star lemons.
function p.create_half_tube(diam, dir, bt_str)
    p.create_half_tube_c( diam, dir, bt_str_to_code(bt_str) )
end

--The "block type is an integer" version.
function p.create_half_tube_c(diam, dir, bt_int)
    if diam >= 1 and diam <= 6 then
        local half = (diam - 1) >> 1
        local i1 = 7 - half
        local i2 = 7 + half
        
        if diam % 2 == 0 then
            i2 = i2 + 1
        end
        
        if(     dir == "x_pos" ) then create_rect_c(bt_int, i1,i1,i1, 15,i2,i2) 
        elseif( dir == "x_neg" ) then create_rect_c(bt_int, 0,i1,i1, i2,i2,i2) 
        elseif( dir == "y_pos" ) then create_rect_c(bt_int, i1,i1,i1, i2,15,i2) 
        elseif( dir == "y_neg" ) then create_rect_c(bt_int, i1,0,i1, i2,i2,i2) 
        elseif( dir == "z_pos" ) then create_rect_c(bt_int, i1,i1,i1, i2,i2,15) 
        elseif( dir == "z_neg" ) then create_rect_c(bt_int, i1,i1,0, i2,i2,i2) end         
    end
end

--Will create the 12 edges of the chunk.
function p.create_edges(bt_str)
    p.create_edges_c( bt_str_to_code(bt_str) )
end

--The "block type is an integer" version.
function p.create_edges_c(bt_int)
    create_rect_c(bt_int, 0,0,0,   15,0,0)
    create_rect_c(bt_int, 0,0,15,  15,0,15)
    create_rect_c(bt_int, 0,15,0,  15,15,0)
    create_rect_c(bt_int, 0,15,15, 15,15,15)
    --
    create_rect_c(bt_int, 0,0,0,   0,15,0)
    create_rect_c(bt_int, 0,0,15,  0,15,15)
    create_rect_c(bt_int, 15,0,0,  15,15,0)
    create_rect_c(bt_int, 15,0,15, 15,15,15)
    --
    create_rect_c(bt_int, 0,0,0,   0,0,15)
    create_rect_c(bt_int, 0,15,0,  0,15,15)
    create_rect_c(bt_int, 15,0,0,  15,0,15)
    create_rect_c(bt_int, 15,15,0, 15,15,15)
end

--Will create the outer shell of the chunk.
function p.create_shell(bt_str)
    p.create_shell_c( bt_str_to_code(bt_str) )
end

--The "block type is an integer" version.
function p.create_shell_c(bt_int)
    create_rect_c(bt_int, 0,0,0,  0,15,15)
    create_rect_c(bt_int, 15,0,0, 15,15,15)
    create_rect_c(bt_int, 0,0,0,  15,0,15)
    create_rect_c(bt_int, 0,15,0, 15,15,15)
    create_rect_c(bt_int, 0,0,0,  15,15,0)
    create_rect_c(bt_int, 0,0,15, 15,15,15)
end

--Can be use in conjunction with create_shell
--to make a room with doors in it.
--Thanks to xenobeam who found a problem with this function.
function p.create_2x2_door(dir, rim_type_str, hole_type_str)
    local rim_type_int = bt_str_to_code(rim_type_str)
    local hole_type_int = bt_str_to_code(hole_type_str)
    p.create_2x2_door_c(dir, rim_type_int, hole_type_int)
end

--The "block type is an integer" version.
function p.create_2x2_door_c(dir, rim_type_int, hole_type_int)
    if(dir == "x_pos") then
        create_rect_c(rim_type_int, 15,6,6, 15,9,9)
        create_rect_c(hole_type_int, 15,7,7, 15,8,8)
    elseif(dir == "x_neg") then
        create_rect_c(rim_type_int, 0,6,6, 0,9,9)
        create_rect_c(hole_type_int, 0,7,7, 0,8,8)
    elseif(dir == "y_pos") then
        create_rect_c(rim_type_int, 6,15,6, 9,15,9)
        create_rect_c(hole_type_int, 7,15,7, 8,15,8)
    elseif(dir == "y_neg") then
        create_rect_c(rim_type_int, 6,0,6, 9,0,9)
        create_rect_c(hole_type_int, 7,0,7, 8,0,8)
    elseif(dir == "z_pos") then
        create_rect_c(rim_type_int, 6,6,15, 9,9,15)
        create_rect_c(hole_type_int, 7,7,15, 8,8,15)
    elseif(dir == "z_neg" ) then
        create_rect_c(rim_type_int, 6,6,0, 9,9,0)
        create_rect_c(hole_type_int, 7,7,0, 8,8,0)
    end
end

-------------------------------------------------------------------------------
--                     Some Block Position Helper Functions
-------------------------------------------------------------------------------

function p.bp(x_value, y_value, z_value)
    return {x=x_value, y=y_value, z=z_value}
end

function p.block_center(bp)
    return std.vec(bp.x + 0.5, bp.y + 0.5, bp.z + 0.5)
end

--Converting a block position to a string.
function p.bp_to_str(v)
    return v.x .. " " .. v.y .. " " .. v.z
end

--Might want to add "block side" functions from base/Game/std.lua here.
--Could then also include "std.get_adj_bp" from that file as well.

-------------------------------------------------------------------------------
--                                   Vectors
-------------------------------------------------------------------------------

function p.vec(x_value, y_value, z_value)
    return {x=x_value, y=y_value, z=z_value}
end

function p.vec_zero()
    return p.vec(0.0, 0.0, 0.0)
end

function p.dot(a,b)
    return a.x*b.x + a.y*b.y + a.z*b.z
end

function p.length(v)
    return math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z)
end

function p.length_sq(v)
    return v.x*v.x + v.y*v.y + v.z*v.z
end

--Will return the normalized version of the argument.
function p.normalize(v)
    local len = p.length(v)
    if( len < 0.00001 ) then
        return p.vec_zero()
    end
    local inv_len = 1.0 / len
    return p.vec_scale_eq(v,inv_len)
end

function p.vec_add(v1, v2)
    return p.vec(v1.x+v2.x, v1.y+v2.y, v1.z+v2.z)
end

function p.vec_add_eq(v1, v2)
    v1.x = v1.x + v2.x
    v1.y = v1.y + v2.y
    v1.z = v1.z + v2.z
    return v1
end

function p.vec_sub(v1, v2)
    return p.vec(v1.x-v2.x, v1.y-v2.y, v1.z-v2.z)
end

function p.dist(v1, v2)
    local diff = p.vec_sub(v1, v2)
    return p.length(diff)
end

function p.dist_sq(v1, v2)
    local diff = p.vec_sub(v1, v2)
    return p.length_sq(diff)
end

function p.vec_sub_eq(v1, v2)
    v1.x = v1.x - v2.x
    v1.y = v1.y - v2.y
    v1.z = v1.z - v2.z
    return v1
end

function p.vec_scale(v, c)
    return p.vec(v.x*c, v.y*c, v.z*c)
end

function p.vec_scale_eq(v, c)
    v.x = v.x * c
    v.y = v.y * c
    v.z = v.z * c
    return v
end

function p.angle_between_vec(a, b)
    local arg =
        p.dot(a,b) / ( p.length(a) * p.length(b) )
    local screw_acos = 0.9999
    if( arg > screw_acos ) then arg = screw_acos end
    return math.acos(arg)
    --Note: acos(1) is essentially undefined.
end

--Converting a vector to a string.
function p.vec_to_str(v)
    return v.x .. " " .. v.y .. " " .. v.z
end

-------------------------------------------------------------------------------
--                            "Lenient" functions
-------------------------------------------------------------------------------

--These functions allow the arguments to come in several orders.
--Instead of using these functions from here, you should copy the code
--into a helper file in your project.  You might want to have a file
--called "WorldNodes/Helpers/h.lua" where you put your own common functions.

--The block type str can either by the first or the last argument.
--The other args should be x,y,z.
function p.set_pos(a1, a2, a3, a4)
    if( type(a4) == "string" ) then
        gen_set_pos(a1, a2, a3, a4) --The API way.
    else
        gen_set_pos(a2, a3, a4, a1) --We assume a1 is the bt string.
    end
end

--The bt str can be either the first or last arg.
--The other args are min_x, min_y, min_z, max_x, max_y, max_z.
--You could make your own version which automatically computes
--the min and max x from the two x values, etc.
function p.create_rect(a1, a2, a3, a4, a5, a6, a7)
    if( type(a7) == "string" ) then
        gen_create_rect(a7, a1, a2, a3, a4, a5, a6)
    else
        gen_create_rect(a1, a2, a3, a4, a5, a6, a7) --We assume a1 is the bt string.
    end
end

--The bt str can be either the first or last arg.
--The other arg is a bp (block position).
--Note: "p" means block position, just like "i" means integer.
function p.set_pos_p(a1, a2)
    if( type(a2) == "string" ) then
        gen_set_pos(a1.x, a1.y, a1.z, a2)
    else
        gen_set_pos(a2.x, a2.y, a2.z, a1) --We assume a1 is the bt string.
    end
end

--The bt str can be either the first or last arg.
--The other args are bp_min and bp_max.
function p.create_rect_p(a1, a2, a3)
    if( type(a3) == "string" ) then
        gen_create_rect(a3, a1.x, a1.y, a1.z, a2.x, a2.y, a2.z)
    else
        --We assume a1 is the bt string.
        gen_create_rect(a1, a2.x, a2.y, a2.z, a3.x, a3.y, a3.z)
    end
end

--This is like set_pos_p, except the block type is given by an integer code.
function p.set_pos_p_c(a1, a2)
    if( type(a2) == "number" ) then
        gen_set_pos_c(a1.x, a1.y, a1.z, a2)
    else
        gen_set_pos_c(a2.x, a2.y, a2.z, a1) --We assume a1 is the bt string.
    end
end

--This is like create_rect_p, except the block type is given by an integer code.
function p.create_rect_p_c(a1, a2, a3)
    if( type(a3) == "number" ) then
        gen_create_rect_c(a3, a1.x, a1.y, a1.z, a2.x, a2.y, a2.z)
    else
        --We assume a1 is the bt string.
        gen_create_rect_c(a1, a2.x, a2.y, a2.z, a3.x, a3.y, a3.z)
    end
end

--We cannot make a similar set_pos_c or create_rect_c
--because that would be impossible.
