playsound entity.item.pickup block @a ~ ~ ~ 0.7 0.45
playsound arbiterlib:sfx.autofisher.water_splash block @a ~ ~ ~ 0.2 1.2

summon item ~ ~ ~ {Motion:[0,-0.4,0],Tags:["autofisher.fish"],Item:{id:knowledge_book}}
team join autofisher.fishing @n[type=item,tag=autofisher.fish,distance=..2]

function autofisher:custom_fishing/work/main_net
execute if score .got autofisher.customfish matches 1 run function autofisher:custom_fishing/work/main_net_complete
execute unless score .got autofisher.customfish matches 1 run function autofisher:block/net/work/make_fish

execute if score @s autofisher.net.skin matches 4 run loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/junk ~ ~ ~ fishing_rod
execute if entity @s[tag=autofisher.block.net.dragon_breath] run function autofisher:block/net/skin/spawn_dragon_fish
execute if score @s autofisher.net.skin matches 101 if items entity @n[type=item,distance=..1] container.0 #autofisher:pride_to_ore run function autofisher:block/net/skin/pride
execute if items entity @n[type=item,tag=autofisher.fish] container.* enchanted_book as @a if score @s arbiterlib.player = @n[distance=..2,type=item_display,tag=autofisher.block.net] autofisher.net.owner_id run advancement grant @s only autofisher:alternative_story/magic_happens
tag @n[type=item,tag=autofisher.fish,distance=..2] remove autofisher.fish

function autofisher:block/net/work/cooldown/main
scoreboard players set @s autofisher.net.pity 0
execute if score @s autofisher.net.skin matches 1 if predicate {condition:random_chance,chance:0.01} run summon phantom ~ ~1 ~ {Motion:[0,1,0]}

execute if score @s autofisher.net.bait matches 3.. if score @s autofisher.net.skin matches 2 run return run scoreboard players remove @s autofisher.net.bait 3
execute if score @s autofisher.net.bait matches 3.. if predicate {condition:random_chance,chance:0.5} run return run scoreboard players remove @s autofisher.net.bait 3
execute if score @s autofisher.net.bait matches 3.. if predicate {condition:random_chance,chance:0.5} run return run scoreboard players remove @s autofisher.net.bait 2
execute if score @s autofisher.net.bait matches 3.. run scoreboard players remove @s autofisher.net.bait 1