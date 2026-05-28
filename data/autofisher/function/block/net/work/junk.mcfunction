loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/junk ~ ~ ~ fishing_rod
scoreboard players add @s autofisher.net.junk_count 1

execute unless score @s autofisher.net.skin matches 4 if score @s autofisher.net.junk_count matches 29 as @a if score @s arbiterlib.player = @n[distance=..2,type=item_display,tag=autofisher.block.net] autofisher.net.owner_id run advancement grant @s only autofisher:alternative_story/trashahedron y
execute unless score @s autofisher.net.skin matches 4 if score @s autofisher.net.junk_count matches 29 run loot replace entity @n[type=item,distance=..2] container.0 loot autofisher:crafts/net_skin_packs/junkie