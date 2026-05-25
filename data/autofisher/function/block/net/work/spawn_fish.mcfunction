playsound entity.item.pickup block @a ~ ~ ~ 0.7 0.45
playsound entity.fishing_bobber.splash block @a ~ ~ ~ 0.2 1.2

summon item ~ ~ ~ {Motion:[0,-0.4,0],Tags:["autofisher.fish"],Item:{id:knowledge_book}}
team join autofisher.fishing @n[type=item,tag=autofisher.fish,distance=..2]
loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing ~ ~ ~ fishing_rod
tag @n[type=item,tag=autofisher.fish,distance=..2] remove autofisher.fish

scoreboard players set @s autofisher.net.cooldown 200
scoreboard players set @s autofisher.net.pity 0

execute unless score @s autofisher.net.bait matches 3.. run return run scoreboard players add @s autofisher.net.bait 0
execute if predicate {condition:random_chance,chance:0.5} run return run scoreboard players remove @s autofisher.net.bait 3
execute if predicate {condition:random_chance,chance:0.5} run return run scoreboard players remove @s autofisher.net.bait 2
scoreboard players remove @s autofisher.net.bait 1