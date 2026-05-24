# this runs when you select the music disc

# do nothing if already selected (optional!)
execute unless score @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] autofisher.button.selected matches 2 run function autofisher:buttons/interact_net/select/feed/first

### important
# conventionally, change the brightness of the selected button to full and fully dim the unselected one
data modify entity @n[distance=..1,tag=arbiterlib.button.type.2at.2] brightness set value {block:15,sky:15}
execute as @n[distance=..2,tag=arbiterlib.button.type.2at.1] run data modify entity @s brightness set value {block:0,sky:0}

scoreboard players set @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] autofisher.button.selected 2




execute as @n[tag=arbiterlib.button.rotate] at @s run rotate @s ~-2 ~

