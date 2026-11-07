--File: game_gold.lua

--This script should be used as an intermediary
--instead of directly getting and setting the global
--variable "xar.player.gold.amount".

--Getting the amount of gold
function p.get()
    return ga_get_i("xar.player.gold.amount")
end

--Gets the max amount of gold the player can get.
function p.get_max()
    return ga_get_i("xar.player.gold.max")
end

function p.is_gold_at_max()
    return ( p.get() >= p.get_max() )
end

function p.set(gold)
    local gold_max = p.get_max()
    --
    --Clipping the gold.
    if( gold < 0 ) then gold = 0 end
    if( gold > gold_max ) then gold = gold_max end
    --
    ga_set_i("xar.player.gold.amount", gold)
end

--Adds a delta to the gold (can be negative).
function p.add(delta)
    local gold_old = p.get()
    local gold_new = gold_old + delta
    p.set(gold_new) --Will clip.
end

--Hopefully this does not need to be called
--from the outside.
function p.clip()
    p.set( p.get() )
end
