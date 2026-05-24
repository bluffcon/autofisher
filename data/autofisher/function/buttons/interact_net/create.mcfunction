playsound block.resin.place ui @a ~ ~ ~ 1 1.2

tag @e[distance=..10,type=item_display,tag=autofisher.block.net] remove autofisher.block.net.interacting
execute at @e[type=item_display,tag=autofisher.button.net,distance=..10] run particle poof ~ ~ ~ 0 0 0 0 2
execute if entity @n[distance=..10,type=text_display,tag=autofisher.button.net] run return run kill @e[type=#arbiterlib:button_components,tag=autofisher.button.net,distance=..10]

tag @n[distance=..1,type=item_display,tag=autofisher.block.net] add autofisher.block.net.interacting
function autofisher:buttons/interact_net/spawn