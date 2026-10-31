scoreboard players operation @s autofisher.net.cooldown = .net_cooldown autofisher.settings

execute if score @s autofisher.net.skin matches 102 run function autofisher:block/net/work/cooldown/trans
execute if score @s autofisher.net.skin matches 106 if biome ~ ~ ~ #autofisher:scary run scoreboard players operation @s autofisher.net.cooldown -= .half_of_net_cooldown autofisher.settings