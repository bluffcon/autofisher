execute at @e[type=#arbiterlib:button_components,tag=autofisher.button.net,distance=..10] run particle poof ~ ~ ~ 0 0 0 0 1
kill @e[type=#arbiterlib:button_components,tag=autofisher.button.net,distance=..10]

playsound block.resin.place ui @a ~ ~ ~ 1 1.2
tag @s remove autofisher.block.net.interacting