

execute unless score @s autofisher.net.bait matches 3.. if predicate {type:"random_chance", chance:0.08} run return run function autofisher:block/net/work/junk



execute if predicate {type:"random_chance", chance:0.979} run return run loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/fish ~ ~ ~ fishing_rod


loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/treasure ~ ~ ~ fishing_rod

