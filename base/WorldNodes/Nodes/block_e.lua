--File: block_e.lua

--This is the default "recursively empty" block.
--This block is so common that I am putting it
--in the base package.
--It is useful for debugging.

function p.__get_is_solid() return false end
function p.__get_tex() return "" end
function p.__get_should_prune_when_infertile() return true end
function p.__main()
    set_default_block("e")
    -- set_pos(7,7,7, "s") --Debugging.
end
