$item modify entity @s weapon.mainhand {type: "set_count", count:-$(bait_stack_size), add: true}

advancement grant @s only autofisher:alternative_story/codbait
execute if predicate {type:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 1.2
execute if predicate {type:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 0.8
execute if predicate {type:"random_chance", chance: 0.5} run return run playsound entity.player.burp block @s ~ ~ ~ 0.7 1.4
playsound entity.player.burp block @s ~ ~ ~ 0.7 1.8

