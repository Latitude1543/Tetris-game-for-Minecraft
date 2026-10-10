data modify storage tetris:game_render dialog.instance[0][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[1][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[3][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[6][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[9][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[12][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[13][-1] set value "AfAbAbAbAbAbAf\n"
data modify storage tetris:game_render dialog.instance[14][-1] set value "AfAfAfAfAfAfAf\n"
data modify storage tetris:game_render dialog.instance[15][-1] set value "AfAbAbAbAbAbAf\n"

data modify storage tetris:game_render dialog.instance[2][-1] set value \
    [\
        "AfAb",\
        {\
            text: "A\u0300",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 1"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "点击暂停游戏"\
            }\
        },\
        "Ab",\
        {\
            text: "A\u0200",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 2"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "点击结束游戏"\
            }\
        },\
        "AbAf\n"\
    ]
data modify storage tetris:game_render dialog.instance[4][-1] set value \
    [\
        "Af",\
        {\
            text: "AfAfAf",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 3"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "左移"\
            }\
        },\
        "AbAbAf\n"\
    ]
data modify storage tetris:game_render dialog.instance[5][-1] set value \
    [\
        "Af",\
        {\
            text: "AcBxAcBxAcBx",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 3"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "左移"\
            }\
        },\
        "AbAbAf\n"\
    ]

data modify storage tetris:game_render dialog.instance[7][-1] set value \
    [\
        "AfAbAb",\
        {\
            text: "AfAfAf",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 4"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "右移"\
            }\
        },\
        "Af\n"\
    ]
data modify storage tetris:game_render dialog.instance[8][-1] set value \
    [\
        "AfAbAb",\
        {\
            text: "AcBxAcBxAcBx",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 4"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "右移"\
            }\
        },\
        "Af\n"\
    ]

data modify storage tetris:game_render dialog.instance[10][-1] set value \
    [\
        "AfAb",\
        {\
            text: "AfAfAf",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 5"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "下移"\
            }\
        },\
        "AbAf\n"\
    ]
data modify storage tetris:game_render dialog.instance[11][-1] set value \
    [\
        "AfAb",\
        {\
            text: "AcBxAcBxAcBx",\
            click_event: {\
                action: "run_command",\
                command: "trigger tetris.game set 5"\
            },\
            hover_event: {\
                action: "show_text",\
                value: "下移"\
            }\
        },\
        "AbAf\n"\
    ]