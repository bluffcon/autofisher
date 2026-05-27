

playsound block.bamboo_wood.place block @a ~ ~0.5 ~ 1 0.8

summon item_display ~ ~0.4 ~ {Tags:["autofisher.block.net.ride","autofisher.block.net"]}
summon shulker ~ ~0.55 ~ {NoAI:1b,Silent:1b,attributes:[{base:3000,id:"max_health"}, {base:0.4,id:scale}],active_effects:[{id:invisibility,duration:-1,amplifier:0,show_particles:false}],DeathLootTable:"",Tags:["autofisher.block.net"],Invulnerable:true,NoGravity:1b}

summon interaction ~ ~ ~ {width:1,height:1,data:{arbiterlib:{entity:"button", select_function:"autofisher:buttons/interact_net/create", tap_function:"autofisher:buttons/interact_net/break"}},Tags:["arbiterlib.button", "autofisher.block.net"],response:1b}

ride @n[type=shulker,distance=..1,tag=autofisher.block.net] mount @n[type=item_display,distance=..1,tag=autofisher.block.net.ride]
ride @n[type=interaction,distance=..1,tag=autofisher.block.net] mount @s

team join autofisher.fishing @n[type=shulker,distance=..1,tag=autofisher.block.net]

tag @s add autofisher.block.net
function arbiterlib:lib/block/adjust_light

scoreboard players set @s autofisher.net.cooldown 300
scoreboard players set @s autofisher.net.bait 0
scoreboard players set @s autofisher.net.skin 0

execute store result score @s autofisher.net.bait run data get entity @s item.components."minecraft:custom_data".autofisher.bait
execute store result score @s autofisher.net.skin run data get entity @s item.components."minecraft:custom_data".autofisher.skin

execute if score .enable_skins autofisher.settings matches 1 run function autofisher:block/net/skin/set_skin_macro with entity @s item.components."minecraft:custom_data".autofisher

scoreboard players operation @s autofisher.net.owner_id = @p arbiterlib.player


execute if predicate {condition:random_chance,chance:0.2} run return run data modify entity @s transformation.right_rotation set value [0,0.707,0,-0.707]
execute if predicate {condition:random_chance,chance:0.2} run return run data modify entity @s transformation.left_rotation set value [0.707,0,0.707,0]
execute if predicate {condition:random_chance,chance:0.2} run return run data modify entity @s transformation.right_rotation set value [-0.707,0,-0.707,0]
execute if predicate {condition:random_chance,chance:0.2} run return run data modify entity @s transformation.left_rotation set value [0,0.707,0,0.707]

data modify entity @s transformation.left_rotation set value [0,0.707,0,0.707]
data modify entity @s transformation.right_rotation set value [0,0.707,0,0.707]