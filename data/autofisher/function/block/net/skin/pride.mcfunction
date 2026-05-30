execute if predicate {condition:random_chance,chance:0.1} run return run loot replace entity @n[type=item,distance=..1] container.0 loot blocks/gold_ore
execute if predicate {condition:random_chance,chance:0.4} run return run loot replace entity @n[type=item,distance=..1] container.0 loot blocks/iron_ore
loot replace entity @n[type=item,distance=..1] container.0 loot blocks/copper_ore