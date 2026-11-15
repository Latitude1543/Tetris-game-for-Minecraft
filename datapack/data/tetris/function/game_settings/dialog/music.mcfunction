$dialog show @s \
{\
    "type": "multi_action",\
    "title": "音乐",\
    "columns": 1,\
    "pause": false,\
    "after_action": "none",\
    "body": {\
        "type": "plain_message",\
        "contents": "播放唱片音乐时部分音效几乎难以被听到，\n\n因此开启音效时建议关闭“循环播放唱片音乐”\n\n（默认关闭）此外，你仅能通过Minecraft游戏菜单中的音乐设置来调节音量大小\n\n设置完成后不要忘记点击最下方的\u00a7n应用修改！"\
    },\
    "inputs": [\
        {\
            "key": "row_erase_enable",\
            "type": "boolean",\
            "label": "行消除音效",\
            "initial": $(last_bool1),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "key": "hd_enable",\
            "type": "boolean",\
            "label": "硬降落音效",\
            "initial": $(last_bool2),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "key": "rotate_enable",\
            "type": "boolean",\
            "label": "方块旋转音效",\
            "initial": $(last_bool3),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "key": "move_enable",\
            "type": "boolean",\
            "label": "方块移动音效",\
            "initial": $(last_bool4),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "key": "music_enable",\
            "type": "boolean",\
            "label": "循环播放唱片音乐",\
            "initial": $(last_bool5),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "key": "music_id",\
            "type": "single_option",\
            "label": "唱片曲目",\
            "options": $(last_music_list),\
            "width": 120\
        }\
    ],\
    "actions": [\
        {\
            "label": "应用修改",\
            "action": {\
                "type": "dynamic/run_command",\
                "template": "trigger tetris.game_music set $(macro6)$(macro5)$(macro4)$(macro3)$(macro2)$(macro1)"\
            },\
            "width": 120\
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