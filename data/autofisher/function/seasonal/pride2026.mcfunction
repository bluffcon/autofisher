tellraw @s [{translate:"ui.arbiterlib.bracket.open",color:white,bold:false,font:default,underlined:false},{translate:"id.autofisher.short",color:"#c29292",bold:false,font:default,underlined:true,hover_event:{action:"show_text",value:[{translate:"ui.arbiterlib.modrinth_link",color:"#5ebef5"}]},click_event:{action:"open_url",url:"https://modrinth.com/project/autofisher"}},{translate:"ui.arbiterlib.bracket.close",color:white,bold:false,font:default,underlined:false},{translate:"ui.arbiterlib.separator",color:"#57575c",bold:false,font:default,underlined:false},{translate:"ui.autofisher.notification.pride_reward",color:"#fff4d6",bold:false,font:default,underlined:false}, " ", {"sprite":"arbiterlib:item/icons/pride_flag", atlas:"items"},{"sprite":"arbiterlib:item/icons/trans_flag", atlas:"items"}]

loot spawn ~ ~ ~ loot autofisher:crafts/pride_net_pack
loot spawn ~ ~ ~ loot autofisher:crafts/trans_net_pack

playsound arbiterlib:sfx.vinyl_scratch ui @s ~ ~ ~ 0.8 1