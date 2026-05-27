execute unless score .exists arbiterlib matches 1 run return run function autofisher:missing_arbiterlib

data modify storage arbiterlib:data reload.messages append value [{translate:"ui.arbiterlib.bracket.open",color:white,bold:false,font:default,underlined:false},{translate:"id.autofisher.short",color:"#c2b792",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{translate:"ui.arbiterlib.modrinth_link",color:"#5ebef5"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/autofisher"}},{translate:"ui.arbiterlib.bracket.close",color:white,bold:false,font:default,underlined:false},{translate:"ui.arbiterlib.separator",color:"#57575c",bold:false,font:default,underlined:false},{translate:"ui.autofisher.welcome.0",color:white,bold:false,font:default,underlined:false}, {translate:"ui.autofisher.welcome.1",color:"#5ebef5",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{translate:"ui.arbiterlib.config_tooltip.1",color:"#5ebef5"},[{translate:"ui.arbiterlib.config_tooltip.2",color:"white"},{translate:"ui.arbiterlib.config_tooltip.3",color:"#5e86f5"}]]}},{translate:"ui.autofisher.welcome.2",color:white,bold:false,font:default,underlined:false}, " ", {"sprite":"mob_effect/water_breathing", atlas:"gui"}]

scoreboard objectives add autofisher.button.selected dummy
scoreboard objectives add autofisher.net.bait dummy
scoreboard objectives add autofisher.net.cooldown dummy
scoreboard objectives add autofisher.net.pity dummy
scoreboard objectives add autofisher.net.skin dummy
scoreboard objectives add autofisher.net.owner_id dummy

scoreboard objectives add autofisher.settings dummy

team add autofisher.fishing
team modify autofisher.fishing collisionRule pushOtherTeams


execute unless score .custom_settings autofisher.settings matches 1 run function autofisher:restore_defaults
execute store result storage autofisher:data bait_stack_size int 1 run scoreboard players get .bait_stack_size autofisher.settings