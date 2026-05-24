function arbiterlib:button/messages/explanation

execute align xyz run particle poof ~0.5 ~1.65 ~0.5 0.2 0.2 0.2 0.01 20

execute align xyz run summon text_display ~0.5 ~1.65 ~0.5 {text:"???", \
    Tags:["arbiterlib.button","arbiterlib.button.type.2at", "autofisher.button.net"], brightness:{block:15,sky:15}, \
    billboard:"center",\
    Passengers: \
        [{ \
            id:"text_display", Tags:["arbiterlib.button", "autofisher.button.net"], \
            transformation: {left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.6,0.6,0.6],translation:[0,0.3,0]}, \
            text: {translate:"ui.autofisher.net.remove_text",fallback:"?"}, billboard:"center", brightness:{block:15,sky:15} \
        }], \
    }

execute if predicate {condition:"random_chance",chance:0.7} run rotate @n[distance=..10,tag=arbiterlib.button.type.2at,type=text_display] ~60 0
execute if predicate {condition:"random_chance",chance:0.3} run rotate @n[distance=..10,tag=arbiterlib.button.type.2at,type=text_display] ~-100 0


summon item_display ~ ~1.25 ~ { \
    Tags: ["arbiterlib.button","arbiterlib.button.type.2at.1","arbiterlib.button.rotate", "autofisher.button.net"], \
    item:{id:copper_axe}, \
    Passengers:[ \
        {id:"interaction", data: \
            {arbiterlib: \
                {entity:"button", \
                    tap_function: "autofisher:buttons/interact_net/select", \
                    select_function:"autofisher:buttons/interact_net/select/1" \
                } \
            }, \
        width:0.5,height:0.5, response: 1b, \
        Tags:["arbiterlib.button", "autofisher.button.net"]} \
    ], \
    transformation: \
        {left_rotation:[0,0.707,0,0.707],right_rotation:[0,0,0,1], \
        scale:[0.5,0.5,0.5],translation:[0,0.25,0]}, \
    brightness:{block:0,sky:0}, teleport_duration:10 \
}

summon item_display ~ ~1.25 ~ { \
    Tags: ["arbiterlib.button","arbiterlib.button.type.2at.2","arbiterlib.button.rotate", "autofisher.button.net"], \
    item:{id:seagrass}, \
    Passengers:[ \
        {id:"interaction", data: \
            {arbiterlib: \
                {entity:"button", \
                    tap_function: "autofisher:buttons/interact_net/select/feed/hit", \
                    select_function:"autofisher:buttons/interact_net/select/2" \
                } \
            }, \
        width:0.5,height:0.5, response: 1b, \
        Tags:["arbiterlib.button", "autofisher.button.net"]} \
    ], \
    transformation: \
        {left_rotation:[0,0.707,0,0.707],right_rotation:[0,0,0,1], \
        scale:[0.5,0.5,0.5],translation:[0,0.25,0]}, \
    brightness:{block:0,sky:0}, teleport_duration:10 \
}


function arbiterlib:button/ticks/main