-------------------------------------------------
--                   Common
-------------------------------------------------
--This file was updated in version "1.01.27".
--Note that some coordinate conversion functions can only
--be done by the engine.

--What the abbreviation stand for:
-- lbp    = "local block position" (a vector of ints)
-- lbph   = "local block position hashcode" (an integer)
-- bp     = "block position" (a vector of ints)
-- offset = "position of a point in a chunk's coordinate system" (a vector of floats)
-- lp     = "level position (of a point in a level)" (a vector of floats)
-- vcp    = "viewer centric position" (a vector of ints)

-------------------------------------------------
--     Local Block Positions (and Hashcodes)
-------------------------------------------------

function p.lbph_to_lbp(hash)
    lbp = {}
    lbp.z = hash % 16
    hash = math.floor( hash / 16 )
    lbp.y = hash % 16
    hash = math.floor( hash / 16 )
    lbp.x = hash % 16
    return lbp
end

function p.lbp_to_lbph(lbp)
    return lbp.z + (16 * lbp.y) + (256 * lbp.x);
end

-------------------------------------------------
--       Converting To A Block Position
-------------------------------------------------
--Converting a block from local (chunk) coordinates to level coordinates.

function p.lbp_to_bp(vcp, lbp)
    local bp = {}
    bp.x = 16*vcp.x + lbp.x
    bp.y = 16*vcp.y + lbp.y
    bp.z = 16*vcp.z + lbp.z
    return bp
end

function p.lbph_to_bp(vcp, lbph)
    local lbp = p.lbph_to_lbp(lbph)
    return p.lbp_to_bp(vcp, lbp)
end

--This can also be done with "ga_chunk_id_and_lbp_to_bp".
function p.chunk_id_and_lbp_to_bp(chunk_id, lbp)
    local vcp = ga_chunk_id_to_vcp(chunk_id)
    return p.lbp_to_bp(vcp, lbp)
end

--This can also be done with "ga_chunk_id_and_lbp_to_bp".
function p.chunk_id_and_lbph_to_bp(chunk_id, lbph)
    local lbp = p.lbph_to_lbp(lbph)
    return p.chunk_id_and_lbp_to_bp(chunk_id, lbp)
end

-------------------------------------------------
--       Converting From a Block Position
-------------------------------------------------
--Converting a block from level coordinates to local (chunk) coordinates.

--This used to be called bp_to_vcp,
--but the name was changed because there is a
--bp_to_vcp in the C++ API that does something different.
--This function takes a block position bp
--for a block B on level L
--and returns the VCP of the chunk C on level L-1
--which contains B.
--That is, it returns the VCP of the chunk which contains the block.
function p.bp_to_parent_vcp(bp)
    local vcp = {}
    vcp.x = math.floor( ( bp.x - (bp.x % 16) ) / 16 )
    vcp.y = math.floor( ( bp.y - (bp.y % 16) ) / 16 )
    vcp.z = math.floor( ( bp.z - (bp.z % 16) ) / 16 )
    return vcp
end

function p.bp_to_lbp(bp)
    local lbp = {}
    lbp.x = bp.x % 16
    lbp.y = bp.y % 16
    lbp.z = bp.z % 16
    return lbp
end

-------------------------------------------------
--   Converting an Offset to a Level Position
-------------------------------------------------
--Converting a point from local (chunk) coordinates to level coordinates.

function p.local_to_level_pos(vcp, offset)
    local lp = {}
    lp.x = 16.0*vcp.x + offset.x
    lp.y = 16.0*vcp.y + offset.y
    lp.z = 16.0*vcp.z + offset.z
    return lp
end

-------------------------------------------------
--   Converting a Level Position to an Offset
-------------------------------------------------
--Converting a point from level coordinates to local (chunk) coordinates.

function p.level_to_local_pos(lp)
    local info = {}
    info.vcp = {}
    info.offset = {}
    info.vcp.x = math.floor(lp.x / 16.0)
    info.vcp.y = math.floor(lp.y / 16.0)
    info.vcp.z = math.floor(lp.z / 16.0)
    info.offset.x = lp.x - 16.0*info.vcp.x
    info.offset.y = lp.y - 16.0*info.vcp.y
    info.offset.z = lp.z - 16.0*info.vcp.z
    return info
end

--This is analogous to "bp_to_parent_vcp".
function p.lp_to_vcp(lp)
    local info = p.level_to_local_pos(lp)
    return info.vcp
end

function p.lp_to_offset(lp)
    local info = p.level_to_local_pos(lp)
    return info.offset
end

-------------------------------------------------
--     Some Block Position Helper Functions
-------------------------------------------------

function p.bp(x_value, y_value, z_value)
    return {x=x_value, y=y_value, z=z_value}
end

function p.block_center(bp)
    return std.vec(bp.x + 0.5, bp.y + 0.5, bp.z + 0.5)
end

--Level position of a point to the block position
--of the block containing the point.
function p.lp_to_bp(lp)
    local bp = {}
    bp.x = math.floor(lp.x)
    bp.y = math.floor(lp.y)
    bp.z = math.floor(lp.z)
    return bp
end

--DO NOT USE THIS!!!
--A duplicate version of lp_to_bp.
--Deprecate this!!!
function p.vec_to_bp(v)
    ga_print("*** Error: The function std.vec_to_bp is being used. Use std.lp_to_bp instead. ")
    --
    return std.bp(
        math.floor(v.x),
        math.floor(v.y),
        math.floor(v.z))
end

--In case they are somehow a little off.
--Computing their L-infinity distance.
function p.bp_eq(bp1, bp2)
    return p.dist_linf(bp1, bp2) < 0.1
end

--Converting a block position to a string.
function p.bp_to_str(v)
    return v.x .. " " .. v.y .. " " .. v.z
end

-------------------------------------------------
--           Vector Helper Functions
-------------------------------------------------

function p.vec(x_value, y_value, z_value)
    return {x=x_value, y=y_value, z=z_value}
end

function p.vec_zero()
    return p.vec(0.0, 0.0, 0.0)
end

function p.dot(a,b)
    return a.x*b.x + a.y*b.y + a.z*b.z
end

function p.cross(a,b)
    return p.vec(
        a.y*b.z - a.z*b.y,
        a.z*b.x - a.x*b.z,
        a.x*b.y - a.y*b.x)
end

function p.length(v)
    return math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z)
end

function p.normalize(v)
    local len = p.length(v)
    if( len < 0.00001 ) then return p.vec_zero() end
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

function p.dist_linf(v1, v2)
    local delta1 = math.abs(v1.x - v2.x)
    local delta2 = math.abs(v1.y - v2.y)
    local delta3 = math.abs(v1.z - v2.z)
    return math.max( delta1, math.max( delta2, delta3 ) )
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

-------------------------------------------------
--            Environment variables
-------------------------------------------------

--Note: You should use ga_set_i_by_delta instead.
--Adding to an int env var.
--Deprecate!!!
function p.set_bydelta_i(suffix, delta)
    -- ga_print("*** Error: The function std.set_bydelta_i is being used. Use ga_set_i_by_delta instead. ")
    local old_value = ga_get_i(suffix)
    local new_value = old_value + delta
    ga_set_i(suffix, new_value)
end

--Note: You should use ga_set_f_by_delta instead.
--Adding to a float env var.
--Deprecate!!!
function p.set_bydelta_f(suffix, delta)
    -- ga_print("*** Error: The function std.set_bydelta_f is being used. Use ga_set_f_by_delta instead. ")
    local old_value = ga_get_f(suffix)
    local new_value = old_value + delta
    ga_set_f(suffix, new_value)
end

-------------------------------------------------
--               Block sides
-------------------------------------------------

function p.side_int_to_str(side_int)
    if side_int == 0 then return "x_pos" end
    if side_int == 1 then return "x_neg" end
    if side_int == 2 then return "y_pos" end
    if side_int == 3 then return "y_neg" end
    if side_int == 4 then return "z_pos" end
    if side_int == 5 then return "z_neg" end
    --
    ga_print("*** Error: std.side_int_to_str("
        .. tostring(side_int) .. ")")
    ga_print("side_int " .. tostring(side_int)
        .. " is unknown")
    ga_exit()
end

--Can use these for speed.
p.SIDE_X_POS = 0
p.SIDE_X_NEG = 1
p.SIDE_Y_POS = 2
p.SIDE_Y_NEG = 3
p.SIDE_Z_POS = 4
p.SIDE_Z_NEG = 5

function p.opp_side(side_int)
    if side_int == p.SIDE_X_POS then return p.SIDE_X_NEG end
    if side_int == p.SIDE_X_NEG then return p.SIDE_X_POS end
    if side_int == p.SIDE_Y_POS then return p.SIDE_Y_NEG end
    if side_int == p.SIDE_Y_NEG then return p.SIDE_Y_POS end
    if side_int == p.SIDE_Z_POS then return p.SIDE_Z_NEG end
    if side_int == p.SIDE_Z_NEG then return p.SIDE_Z_POS end
end

function p.side_str_to_int(side_str)
    if side_str == "x_pos" then return p.SIDE_X_POS end
    if side_str == "x_neg" then return p.SIDE_X_NEG end
    if side_str == "y_pos" then return p.SIDE_Y_POS end
    if side_str == "y_neg" then return p.SIDE_X_NEG end
    if side_str == "z_pos" then return p.SIDE_Z_POS end
    if side_str == "z_neg" then return p.SIDE_Z_NEG end
    --
    ga_print("*** Error: std.side_str_to_int("
        .. tostring(side_str) .. ")")
    ga_print("side_str " .. side_str
        .. " is unknown")
    ga_exit()
end

function p.side_int_to_vec(side_int)
    if side_int == 0 then return std.vec(1.0, 0.0, 0.0) end
    if side_int == 1 then return std.vec(-1.0, 0.0, 0.0) end
    if side_int == 2 then return std.vec(0.0, 1.0, 0.0) end
    if side_int == 3 then return std.vec(0.0, -1.0, 0.0) end
    if side_int == 4 then return std.vec(0.0, 0.0, 1.0) end
    if side_int == 5 then return std.vec(0.0, 0.0, -1.0) end
end

-------------------------------------------------
--                 Blocks
-------------------------------------------------

function p.bp_add(v1, v2)
    return p.vec(v1.x+v2.x, v1.y+v2.y, v1.z+v2.z)
end

function p.get_adj_bp(bp, side_int)
    local adj_bp = std.vec(bp.x, bp.y, bp.z)
    if side_int == 0 then adj_bp.x = adj_bp.x + 1 end
    if side_int == 1 then adj_bp.x = adj_bp.x - 1 end
    if side_int == 2 then adj_bp.y = adj_bp.y + 1 end
    if side_int == 3 then adj_bp.y = adj_bp.y - 1 end
    if side_int == 4 then adj_bp.z = adj_bp.z + 1 end
    if side_int == 5 then adj_bp.z = adj_bp.z - 1 end
    return adj_bp
end

-------------------------------------------------
--                Lua Modules
-------------------------------------------------

--If this function returns true,
--then the module function can be called by
--_G[mod_name][func_name](args).
function p.mod_func_exists(mod_name, func_name)
    if( mod_name == "" ) then return false end
    if( not _G[mod_name] ) then return false end
    local mod = _G[mod_name]
    if( type(mod) ~= "table" ) then return false end
    local func = mod[func_name]
    if( not func ) then return false end
    if( type(func) ~= "function" ) then return false end
    return true
end

-------------------------------------------------
--          MEnt (Moving Entity) related
-------------------------------------------------

--Perhaps one day the game API should expose its own version of this.
function p.ment_get_index_level(level, radius)
    local data = {}
    data.level = level
    data.radius = radius
    local iw = 1.0 / ga_get_sys_i("game.package.chunk_width")
    while( data.radius > 7.9 ) do
        data.radius = data.radius * iw
        data.level = data.level - 1
    end
    return data
end
