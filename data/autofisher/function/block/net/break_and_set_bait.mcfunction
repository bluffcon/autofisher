$item modify entity @n[type=item,distance=..1] container.0 {function: "set_components", components:{entity_data: \
\
                        {"id": "item_display", \
                            "Tags": ["arbiterlib.block","arbiterlib.block.adjustable_light"], \
                            "data":  \
                                {"arbiterlib": \
                                    {"block": \
                                        {"namespace": "autofisher", \
                                            "function": "autofisher:block/net/spawn", \
                                            "drop_loottable": "autofisher:crafts/net", \
                                            "id": "net" \
                                        } \
                                    } \
                                }, \
                        "item": {"id": "crafting_table","components": {"item_model": "arbiterlib:autofisher_net", "custom_data":{autofisher:{bait:$(autofisher_bait_score), skin:$(autofisher_skin_number)}}}}, \
                        "brightness": { \
                            "block": 15, "sky": 0 \
                        }, \
                        "transformation": {"left_rotation": [0.0, 0.0, 0.0, 1.0], "right_rotation": [0.0, 0.0, 0.0, 1.0], "scale": [1.001, 1.001, 1.001], "translation": [0.0, 0.5, 0.0]}, \
                        "Rotation": [0,0], \
                        "glow_color_override": 1 \
}, item_model:"arbiterlib:autofisher/net/skin_$(autofisher_skin_number)"}}

$execute if score .enable_skins autofisher.settings matches 1 run return run item modify entity @n[type=item,distance=..1] container.0 {function:"set_lore",lore:[[{translate:"ui.autofisher.bait_colon",color:gray,italic:false},{text:"$(autofisher_bait_score)",color:gold,italic:false},{text:"/",color:gray,italic:false},{text:"$(autofisher_bait_max)",color:white,italic:false}, {"text":" | ", color:"#57575c"}, {translate:"ui.autofisher.skin.$(autofisher_skin_number)",color:white}]],mode:"insert"}

$item modify entity @n[type=item,distance=..1] container.0 {function:"set_lore",lore:[[{translate:"ui.autofisher.bait_colon",color:gray,italic:false},{text:"$(autofisher_bait_score)",color:gold,italic:false},{text:"/",color:gray,italic:false},{text:"$(autofisher_bait_max)",color:white,italic:false}]],mode:"insert"}

