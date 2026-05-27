execute unless score @n[distance=..1,type=text_display,tag=arbiterlib.button.type.2at] autofisher.button.selected matches 2 run return fail
execute if score @n[distance=..3,type=item_display,tag=autofisher.block.net.interacting] autofisher.net.bait >= .worth_till_max_bait autofisher.settings run return run advancement grant @p only autofisher:alternative_story/overfed_the_fish

execute unless score @n[distance=..3,type=item_display,tag=autofisher.block.net.interacting] autofisher.net.bait >= .stack_worth_till_max_bait autofisher.settings run function autofisher:buttons/interact_net/select/feed/stack/hit_macro with storage autofisher:data
function autofisher:buttons/interact_net/select/feed/hit_macro with storage autofisher:data

