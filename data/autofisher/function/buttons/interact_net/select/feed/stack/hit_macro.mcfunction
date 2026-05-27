
execute on attacker unless predicate arbiterlib:sneaking run return fail

$execute on attacker if predicate arbiterlib:sneaking if data entity @s SelectedItem{count:$(bait_stack_size)} if items entity @s weapon.mainhand $(autofisher_bait_item) as @n run function autofisher:buttons/interact_net/select/feed/stack/as_int
$execute on attacker if predicate arbiterlib:sneaking if data entity @s SelectedItem{count:$(bait_stack_size)} if items entity @s weapon.mainhand $(autofisher_bait_item) run return run function autofisher:buttons/interact_net/select/feed/stack/feeding with storage arbiterlib:data