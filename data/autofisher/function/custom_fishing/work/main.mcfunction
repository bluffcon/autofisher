
scoreboard players set .chance_out_of_1000 autofisher.customfish 0
scoreboard players set .got autofisher.customfish 0
data modify storage autofisher:custom_fishing entries set value []
data modify storage autofisher:custom_fishing chooser set value {}
function #autofisher:poll_custom_fish

data modify storage autofisher:custom_fishing chooser.entry_functions set from storage autofisher:custom_fishing entries
scoreboard players operation .chance_out_of_1000 autofisher.customfish *= .customfish.final_chance_multiplier autofisher.settings
scoreboard players operation .chance_out_of_1000 autofisher.customfish /= .customfish.final_chance_divider autofisher.settings

execute if score .chance_out_of_1000 autofisher.customfish >= .customfish.max_allowed_against_vanilla_pool autofisher.settings run scoreboard players operation .chance_out_of_1000 autofisher.customfish = .customfish.max_allowed_against_vanilla_pool autofisher.settings

execute store result score .random_roll autofisher.customfish run random value 0..1000
execute if score .chance_out_of_1000 autofisher.customfish >= .random_roll autofisher.customfish run function autofisher:custom_fishing/work/chooser/start
