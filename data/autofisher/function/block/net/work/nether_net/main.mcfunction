execute unless score @s autofisher.net.skin matches 3 run return fail
particle large_smoke ~ ~0.5 ~ 0.25 0.25 0.25 0 1

execute if predicate {condition:"random_chance",chance:0.15} run scoreboard players remove @s autofisher.net.cooldown 1
execute if score @s autofisher.net.cooldown matches 1.. run return fail
execute if score @s autofisher.net.cooldown matches -1 run playsound arbiterlib:sfx.autofisher.fishing_reel block @a ~ ~ ~ 0.2 1
execute if score @s autofisher.net.cooldown matches -1 run scoreboard players remove @s autofisher.net.cooldown 1

scoreboard players add @s autofisher.net.pity 1
execute if score @s autofisher.net.pity matches 400 run return run function autofisher:block/net/work/spawn_fish

execute unless score @s autofisher.net.bait matches 3.. if predicate {condition:"random_chance",chance:0.0001} run function autofisher:block/net/work/spawn_fish
execute if score @s autofisher.net.bait matches 3.. if predicate {condition:"random_chance",chance:0.0005} run function autofisher:block/net/work/spawn_fish