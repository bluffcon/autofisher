#######################################
#                                     #
#  autofisher data format version r3  #
#                                     #
#######################################

scoreboard players set .one autofisher.settings 1
scoreboard players set .max_net_bait autofisher.settings 960
scoreboard players set .seagrass_bait_worth autofisher.settings 5
scoreboard players set .bait_stack_size autofisher.settings 64

scoreboard players set .custom_settings autofisher.settings 0
scoreboard players set .enable_skins autofisher.settings 1

execute store result storage autofisher:data autofisher_bait_max int 1 run scoreboard players get .max_net_bait autofisher.settings
data modify storage autofisher:data autofisher_bait_item set value "seagrass[]"
data modify storage autofisher:data autofisher_bait_item_id set value "seagrass"
data modify storage autofisher:data autofisher_bait_item_display_components set value {"minecraft:enchantment_glint_override":0b}


scoreboard players operation .worth_till_max_bait autofisher.settings = .max_net_bait autofisher.settings
scoreboard players operation .worth_till_max_bait autofisher.settings -= .seagrass_bait_worth autofisher.settings
scoreboard players operation .worth_till_max_bait autofisher.settings += .one autofisher.settings

scoreboard players operation .seagrass_stack_bait_worth autofisher.settings = .seagrass_bait_worth autofisher.settings
scoreboard players operation .seagrass_stack_bait_worth autofisher.settings *= .bait_stack_size autofisher.settings
scoreboard players operation .stack_worth_till_max_bait autofisher.settings = .max_net_bait autofisher.settings
scoreboard players operation .stack_worth_till_max_bait autofisher.settings -= .seagrass_stack_bait_worth autofisher.settings
scoreboard players operation .stack_worth_till_max_bait autofisher.settings += .one autofisher.settings


