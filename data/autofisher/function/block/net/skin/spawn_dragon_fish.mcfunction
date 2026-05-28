tag @s remove autofisher.block.net.dragon_breath
loot replace entity @n[type=item,distance=..2] container.0 loot blocks/chorus_plant
execute if predicate {condition:random_chance,chance:0.2} run loot replace entity @n[type=item,distance=..2] container.0 loot autofisher:crafts/net_skin_packs/space
playsound entity.dragon_fireball.explode block @a ~ ~ ~ 1 0.6
execute as @a if score @s arbiterlib.player = @n[distance=..2,type=item_display,tag=autofisher.block.net] autofisher.net.owner_id run advancement grant @s only autofisher:alternative_story/skystone_and_pillar x