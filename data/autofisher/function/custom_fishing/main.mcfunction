advancement revoke @s only autofisher:fished

execute as @e[type=item,distance=..20] run tag @s add autofisher.investigated
tag @s add autofisher.investigation
schedule function autofisher:custom_fishing/detect 1t

