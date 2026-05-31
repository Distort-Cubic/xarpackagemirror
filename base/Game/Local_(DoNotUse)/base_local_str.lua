--File: base_local_str.lua

--These script should NOT be used
--by other packages.

--The name of this script is strange because we want to discourage
--packages other than the base package from using it.

--Helper function
function p.make_2_digit(x)
    if( x < 10 ) then return "0" .. tostring(x) end
    return x
end

--Helper function
function p.make_3_digit(x)
    if( x < 10 ) then return "00" .. tostring(x) end
    if( x < 100 ) then return "0" .. tostring(x) end
    return x
end

--Helper function.
--Takes an integer and returns a string with commas.
function p.add_commas(num)
    if( num < 0 ) then
        local str = p.add_commas(-num) --Recursion.
        return "-" .. str
    end
    local ones_rem = math.floor(num) % 1000
    local thousands = math.floor( (num - ones_rem) / 1000 )
    if( thousands == 0 ) then
        return tostring(num)
    end
    local thousands_rem = thousands % 1000
    local millions = math.floor( (thousands - thousands_rem) / 1000 )
    if( millions == 0 ) then
        return tostring(thousands) .. ","
        .. p.make_3_digit(ones_rem)
    end
    return tostring(millions) .. ","
        .. p.make_3_digit(thousands_rem) .. ","
        .. p.make_3_digit(ones_rem)
end

--Helper function
function p.time_str(time_f)
    local seconds_total = math.floor(time_f)
    local seconds = math.floor( math.fmod(seconds_total, 60.0) )
    local minutes_total = math.floor( (seconds_total - seconds) / 60.0 )
    local minutes = math.floor( math.fmod(minutes_total, 60.0) )
    local hours_total = math.floor( (minutes_total - minutes) / 60.0 )
    return base_local_str.make_3_digit(hours_total) .. ":"
        .. base_local_str.make_2_digit(minutes) .. ":"
        .. base_local_str.make_2_digit(seconds)
end

function p.str_has_substr(str, substr)
    local start_index = 1
    local plain = true
    return string.find(str, substr, start_index, plain)
end

--A bit slow.
--We split the pattern by the ' ' character into substrings,
--then we make sure each individual substring is a substring of str.
function p.matches_fancy(str, pattern)
    local str2      = string.upper(str)
    local pattern2  = string.upper(pattern)
    --Writing annoying code because worrying about magic characters.
    --Splitting the string by ' '.
    local pattern_strs = {}
    local cur_pattern = ""
    for i = 1, #pattern2 do
        local c = pattern2:sub(i,i)
        if( c == ' ' ) then
            if( cur_pattern ~= "" ) then
                pattern_strs[#pattern_strs+1] = cur_pattern
                cur_pattern = ""
            end
        else
            cur_pattern = cur_pattern .. c
        end
    end
    if( cur_pattern ~= "" ) then
        pattern_strs[#pattern_strs+1] = cur_pattern
        cur_pattern = ""
    end
    --For each pattern string, seeing if there is a match.
    --We only return true if each pattern is matched.
    for k,v in ipairs(pattern_strs) do
        local substr = v
        if( not p.str_has_substr(str2, substr) ) then
            --The substr was not found.
            return false
        end
    end
    return true
end

function p.ago_str(game_time, past_time)
    local delta = math.floor(game_time - past_time)
    if( delta < 60 ) then return "seconds ago" end
    if( delta < 120 ) then return "1 min" end
    local num_mins = math.floor( delta / 60 )
    if( num_mins < 121 ) then return tostring(num_mins) .. " min" end
    local num_hours = math.floor( num_mins / 60 )
    return tostring(num_hours) .. " hr"
end

--Could perhaps put elsewhere.
function p.path_str_to_level(path_str)
    if( path_str == "EMPTY_PATH" ) then return 0 end
    --
    if( path_str:find("^NEG_") ~= nil ) then
        --The path starts with "NEG_".
        local path_str2 = path_str:gsub("^NEG_","")
        local neg_num_str = path_str2:match("^([^_]+)")
        local neg_num = (-1) * tonumber(neg_num_str)
        local path_str3 = path_str2:gsub("^" .. neg_num_str, "")
        if( path_str3 == "" ) then
            --Corner case. The path str is of the form NEG_XXXX.
            return neg_num
        end
        --Removing the leading "_".
        local path_str4 = path_str3:gsub("^_", "")
        local recursive_num = p.path_str_to_level(path_str4)
        return neg_num + recursive_num
    end
    --
    local str_len = string.len(path_str)
    if( str_len == 3 ) then return 1 end
    return math.floor( ( (str_len - 3) / 4 ) + 1 ) --A little cringe, but makes sense.
end
