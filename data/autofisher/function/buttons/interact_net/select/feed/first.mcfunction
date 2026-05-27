particle bubble_pop ~ ~ ~ 0.2 0.2 0.2 0 10
playsound block.resin.place ui @a ~ ~ ~ 1 1.2
execute as @n[tag=arbiterlib.button.rotate] at @s run rotate @s ~-10 ~

title @a[distance=..4] actionbar [{translate:"ui.autofisher.net.bait_how_to_add.1"}, {keybind:"key.attack"}, {translate:"ui.autofisher.net.bait_how_to_add.2"}]

execute store result storage autofisher:data autofisher_bait_score int 1 run scoreboard players get @n[type=item_display,distance=..9,tag=autofisher.block.net.interacting] autofisher.net.bait
function autofisher:buttons/interact_net/select/feed/text with storage autofisher:data