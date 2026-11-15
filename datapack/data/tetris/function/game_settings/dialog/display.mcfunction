$dialog show @s \
{\
    "type": "multi_action",\
    "title": "显示",\
    "columns": 1,\
    "pause": false,\
    "after_action": "none",\
    "inputs": [\
        {\
            "key": "feedback_enable",\
            "type": "boolean",\
            "label": "开始游戏后是否在聊天栏发送命令反馈",\
            "initial": $(last_bool),\
            "on_false": "10",\
            "on_true": "11"\
        }\
    ],\
    "actions": [\
        {\
            "label": "应用修改",\
            "action": {\
                "type": "dynamic/run_command",\
                "template": "trigger tetris.game_display set $(macro1)"\
            },\
            "width": 120,\
            "tooltip": "游戏结束后会恢复游戏规则\nsend_command_feedback原本（这里指没有开始游戏时）的设置"\
        },\
        {\
            "label": "返回",\
            "action": {\
                "type": "minecraft:show_dialog",\
                "dialog": "tetris:game_settings/menu"\
            },\
            "width": 120\
        }\
    ]\
}