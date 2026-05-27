$data modify entity @n[distance=..1,type=item_display] item.components."minecraft:item_model" set value "arbiterlib:autofisher_net_skin_$(skin)"
$data modify entity @n[distance=..1,type=item_display] item.components."minecraft:custom_data".autofisher.skin set value $(skin)
$scoreboard players set @n[distance=..1,type=item_display] autofisher.net.skin $(skin)
item modify entity @s weapon.mainhand {function: "set_count", count:-1, add: true}
playsound entity.player.burp block @a ~ ~ ~ 1 1.6