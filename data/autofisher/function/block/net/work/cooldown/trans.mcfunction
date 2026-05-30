scoreboard players set @s autofisher.net.skin.102 0
execute as @e[type=item_display,tag=autofisher.block.net,distance=..3.5,tag=!autofisher.block.net.ride] run scoreboard players add @n[type=item_display,tag=autofisher.block.net,distance=..1] autofisher.net.skin.102 1
scoreboard players operation @s autofisher.net.skin.102 *= .1_percent_of_net_cooldown autofisher.settings
scoreboard players operation @s autofisher.net.cooldown -= @s autofisher.net.skin.102

execute if score @s autofisher.net.cooldown < .half_of_net_cooldown autofisher.settings run scoreboard players operation @s autofisher.net.cooldown = .half_of_net_cooldown autofisher.settings