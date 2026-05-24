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
                        "item": {"id": "crafting_table","components": {"item_model": "arbiterlib:autofisher_net", "custom_data":{autofisher:{bait:$(autofisher_bait_score)}}}}, \
                        "brightness": { \
                            "block": 15, "sky": 0 \
                        }, \
                        "transformation": {"left_rotation": [0.0, 0.0, 0.0, 1.0], "right_rotation": [0.0, 0.0, 0.0, 1.0], "scale": [1.001, 1.001, 1.001], "translation": [0.0, 0.5, 0.0]}, \
                        "Rotation": [0,0], \
                        "glow_color_override": 1 \
}}}

$item modify entity @n[type=item,distance=..1] container.0 {function:"set_lore",lore:[[{translate:"ui.autofisher.bait_colon",color:gray,italic:false},{text:"$(autofisher_bait_score)",color:white,italic:false}]],mode:"insert"}