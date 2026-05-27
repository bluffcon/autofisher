
execute on attacker if items entity @s weapon.mainhand dragon_breath as @n run function autofisher:buttons/interact_net/select/feed/dragon/as_int
execute on attacker if items entity @s weapon.mainhand dragon_breath run function autofisher:buttons/interact_net/select/feed/dragon/feeding

$execute on attacker if items entity @s weapon.mainhand $(autofisher_bait_item) as @n run function autofisher:buttons/interact_net/select/feed/as_int
$execute on attacker if items entity @s weapon.mainhand $(autofisher_bait_item) run function autofisher:buttons/interact_net/select/feed/feeding