$data modify storage autofisher:custom_fishing chooser.chosen_function set from storage autofisher:custom_fishing chooser.entry_functions[-$(chosen_number)].function
$data modify storage autofisher:custom_fishing chooser.reroll_chance set from storage autofisher:custom_fishing chooser.entry_functions[-$(chosen_number)].reroll_chance

function autofisher:custom_fishing/work/chooser/macro3 with storage autofisher:custom_fishing chooser
