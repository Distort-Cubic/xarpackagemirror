function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    create_xar_chunk("XAR_FANATIC_ISLAND_GROUND")
    for x=0,15 do
        for y=0,15 do
            for z = 0,15 do
                if get_pos(x,y,z) == "XAR_FANATIC_ISLAND_CAVES_DISCIPLE" then
                     set_pos(x,y,z,"XAR_EMPTY_BORING")
                end
            end
        end
    end
end