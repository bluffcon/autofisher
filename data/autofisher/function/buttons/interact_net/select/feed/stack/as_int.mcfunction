particle happy_villager ~ ~ ~ 0.2 0 0.2 0.7 2

scoreboard players operation @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.bait += .seagrass_stack_bait_worth autofisher.settings

execute store result storage autofisher:data autofisher_bait_score int 1 run scoreboard players get @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.bait
function autofisher:buttons/interact_net/select/feed/text with storage autofisher:data