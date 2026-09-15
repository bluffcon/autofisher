execute on attacker unless items entity @s weapon.mainhand copper_axe run return fail

execute on attacker if predicate {type:"random_chance",chance:0.5} run item modify entity @s weapon.mainhand {type:set_damage,damage:-0.00531,add:true}
execute on attacker run advancement grant @s only autofisher:alternative_story/quickdraw_fishing
tag @n[type=item_display,distance=..1] add autofisher.block.net.interacting
function autofisher:buttons/interact_net/select