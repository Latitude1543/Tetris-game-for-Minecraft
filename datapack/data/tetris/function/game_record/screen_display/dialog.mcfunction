$dialog show @s \
{\
    "type": "minecraft:notice",\
    "title": "开局难度$(opening_difficulty) \u00a7f玩家排行",\
    "body": {\
        "type": "plain_message",\
        "contents": $(contents)\
    },\
    "pause": false,\
    "action": {\
        "label": "返回",\
        "action": {\
            "type": "minecraft:show_dialog",\
            "dialog": "tetris:game_record"\
        }\
    }\
}