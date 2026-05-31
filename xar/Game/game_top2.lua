--The engine calls functions in "game_top.lua",
--but not in this file (game_top2.lua).

--We assume that game_damage.calc_damage_to_player
--has NOT yet been applied to amount.
function p.damage_player(raw, amount)
    game_damage.damage_player(raw, amount)
end

--We assume that game_damage.calc_damage_to_player
--has NOT yet been applied to amount.
function p.damage_player_from_dir(raw, amount, dir)
    --We don't want to register an attack if it does not damage the player.
    local allow_powerups = false
    if game_damage.calc_damage_to_player(amount, allow_powerups) >= 1 then
        ga_hud_reg_damage_from_dir(amount, dir)
    end

    p.damage_player(raw, amount)
end
