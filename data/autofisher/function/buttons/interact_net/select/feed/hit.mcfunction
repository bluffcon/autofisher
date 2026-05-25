execute unless score @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] autofisher.button.selected matches 2 run return fail

execute on attacker if items entity @s weapon.mainhand seagrass as @n run function autofisher:buttons/interact_net/select/feed/as_int
execute on attacker if items entity @s weapon.mainhand seagrass run function autofisher:buttons/interact_net/select/feed/feeding