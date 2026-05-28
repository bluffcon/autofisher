item modify entity @s weapon.mainhand {function: "set_count", count:-1, add: true}

advancement grant @s only autofisher:alternative_story/codbait
execute if predicate {condition:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 1.2
execute if predicate {condition:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 0.8
execute if predicate {condition:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 1.4
playsound entity.player.burp block @s ~ ~ ~ 0.7 1.8

