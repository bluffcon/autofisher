execute unless score @s autofisher.net.bait matches 3.. if predicate {condition:"random_chance", chance:0.08} run return run loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/junk ~ ~ ~ fishing_rod

execute if predicate {condition:"random_chance", chance:0.979} run return run loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/fish ~ ~ ~ fishing_rod

loot replace entity @n[type=item,distance=..2] container.0 fish gameplay/fishing/treasure ~ ~ ~ fishing_rod