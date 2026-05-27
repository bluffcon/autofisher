execute if score .enable_skins autofisher.settings matches 1 on target if items entity @s weapon.mainhand *[custom_data~{arbiterlib:{id:"skin_pack"}}] run return run function autofisher:block/net/skin/apply


tag @e[distance=..10,type=item_display,tag=autofisher.block.net] remove autofisher.block.net.interacting
execute at @e[type=item_display,tag=autofisher.button.net,distance=..10] run particle poof ~ ~ ~ 0 0 0 0 2
execute if entity @n[distance=..10,type=text_display,tag=autofisher.button.net] run return run function autofisher:block/net/remove_buttons

tag @n[distance=..1,type=item_display,tag=autofisher.block.net] add autofisher.block.net.interacting
function autofisher:buttons/interact_net/spawn