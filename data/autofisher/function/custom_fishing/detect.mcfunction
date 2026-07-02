execute at @a[tag=autofisher.investigation] as @n[type=item,distance=..21,tag=!autofisher.investigated] unless data entity @s Thrower run function autofisher:custom_fishing/work/main
execute as @a[tag=autofisher.investigation] run tag @s remove autofisher.investigation
