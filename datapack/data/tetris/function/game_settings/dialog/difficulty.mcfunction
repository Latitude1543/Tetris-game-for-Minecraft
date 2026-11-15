$dialog show @s \
{\
    "type": "minecraft:multi_action",\
    "title": "难度",\
    "columns": 1,\
    "pause": false,\
    "after_action": "none",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "难度取决于方块自然下落时间间隔（t）\n\n难度等级取决于得分区间\n\n难度等级为1时对应的t的值为基值（b）\n\n难度等级2,3,4对应的t的值均在基值的基础上计算得出，难度等级越大t的值越小\n\n调整开局难度以改变b的值\n"\
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