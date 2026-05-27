execute unless score @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] autofisher.button.selected matches 1 run return fail


particle block{block_state:"oak_log"} ~0 ~ ~ 0.2 0.2 0.2 1 100
execute at @n[type=item_display,tag=autofisher.block.net.interacting] positioned ~ ~ ~ run playsound block.bamboo_wood.break block @a ~ ~0.5 ~ 1 1

execute store result storage autofisher:data autofisher_bait_score int 1 run scoreboard players get @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.bait
execute store result storage autofisher:data autofisher_skin_number int 1 run scoreboard players get @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.skin

kill @e[type=#arbiterlib:button_components,tag=autofisher.button.net,distance=..10]
particle poof ~ ~ ~ 0 0 0 0.01 2
execute at @n[type=item_display,tag=autofisher.block.net.interacting] as @n[type=shulker,tag=autofisher.block.net] run function arbiterlib:lib/instakill
execute at @n[type=item_display,tag=autofisher.block.net.interacting] run kill @n[type=interaction,tag=autofisher.block.net]
execute at @n[type=item_display,tag=autofisher.block.net.interacting] run kill @n[type=item_display,tag=autofisher.block.net.ride]
execute as @n[type=item_display,tag=autofisher.block.net.interacting] run kill @s


loot spawn ~ ~ ~ loot autofisher:crafts/net
function autofisher:block/net/break_and_set_bait with storage autofisher:data