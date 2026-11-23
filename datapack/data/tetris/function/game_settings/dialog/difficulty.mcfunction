$dialog show @s \
{\
    "type": "minecraft:multi_action",\
    "title": "难度",\
    "columns": 1,\
    "pause": false,\
    "after_action": "none",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "难度取决于方块自然下落一格所需时间（t）\n\n难度等级（n）取决于得分区间，从得分（s）为0时开始，s每增加3000，n增加1\n\n难度决定函数t = f(b,n)\nt = t₀[0.8^(n-1)] = (30-5b)(0.8^n)\n其中b为开局难度\n\n不难看出，在同一个难度等级下，b的值越大，t的值越小，方块下落也就越快"\
    },\
    "inputs": [\
        {\
            "key": "difficulty",\
            "type": "minecraft:number_range",\
            "label": "开局难度",\
            "start": 1,\
            "end": 4,\
            "initial": $(last_difficulty),\
            "step": 1,\
            "width": 100\
        }\
    ],\
    "actions": [\
        {\
            "label": "应用修改",\
            "action": {\
                "type": "minecraft:dynamic/run_command",\
                "template": "trigger tetris.game_difficulty set $(macro)"\
            },\
            "width": 100\
        },\
        {\
            "label": "返回",\
            "action": {\
                "type": "minecraft:show_dialog",\
                "dialog": "tetris:game_settings/menu"\
            },\
            "width": 100\
        }\
    ]\
}