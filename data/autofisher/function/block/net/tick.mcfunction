
execute if entity @s[tag=autofisher.block.net.dragon_breath] run particle dragon_breath ~ ~0.5 ~ 0.25 0.25 0.25 0 2
execute if block ~ ~ ~ water run function autofisher:block/net/work/main
execute if block ~ ~ ~ lava run function autofisher:block/net/work/nether_net/main
execute if entity @s[tag=autofisher.block.net.interacting] unless entity @p[distance=..5] run function autofisher:block/net/remove_buttons