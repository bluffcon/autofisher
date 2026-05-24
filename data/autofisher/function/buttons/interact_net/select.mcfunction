
particle block{block_state:"oak_log"} ~0 ~ ~ 0.2 0.2 0.2 1 100
execute at @n[type=item_display,tag=autofisher.block.net.interacting] positioned ~ ~ ~ run playsound block.bamboo_wood.break block @a ~ ~0.5 ~ 1 1

execute store result storage arbiterlib:temp autofisher_bait_score int 1 run scoreboard players get @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.bait

kill @e[type=#arbiterlib:button_components,tag=autofisher.button.net,distance=..10]
particle poof ~ ~ ~ 0 0 0 0.01 2
execute at @n[type=item_display,tag=autofisher.block.net.interacting] as @n[type=shulker,tag=autofisher.block.net] run function arbiterlib:lib/instakill
execute at @n[type=item_display,tag=autofisher.block.net.interacting] run kill @n[type=interaction,tag=autofisher.block.net]
execute at @n[type=item_display,tag=autofisher.block.net.interacting] run kill @n[type=item_display,tag=autofisher.block.net.ride]
execute as @n[type=item_display,tag=autofisher.block.net.interacting] run kill @s


loot spawn ~ ~ ~ loot autofisher:crafts/net
function autofisher:block/break_and_set_bait with storage arbiterlib:temp