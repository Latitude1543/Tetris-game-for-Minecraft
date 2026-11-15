scoreboard players set #game_music_id tetris.num 1
scoreboard players set #game_music_enable tetris.num 0
scoreboard players set #hd_music_enable tetris.num 1
scoreboard players set #rotate_music_enable tetris.num 1
scoreboard players set #move_music_enable tetris.num 1
scoreboard players set #row_erase_music_enable tetris.num 1
data modify storage tetris:game_settings open.music set value \
    {\
        last_bool1: "true",\
        last_bool2: "true",\
        last_bool3: "true",\
        last_bool4: "true",\
        last_bool5: "false",\
        last_music_list: [\
            {\
                "id": "1",\
                "display": "otherside",\
                "initial": true\
            },\
            {\
                "id": "2",\
                "display": "C418-cat"\
            },\
            {\
                "id": "3",\
                "display": "C418-mall"\
            },\
            {\
                "id": "4",\
                "display": "C418-strad"\
            },\
            {\
                "id": "5",\
                "display": "C418-wait"\
            },\
            {\
                "id": "6",\
                "display": "Bounce"\
            },\
            {\
                "id": "7",\
                "display": "Creator"\
            }\
        ],\
        macro1: "$(row_erase_enable)",\
        macro2: "$(hd_enable)",\
        macro3: "$(rotate_enable)",\
        macro4: "$(move_enable)",\
        macro5: "$(music_enable)",\
        macro6: "$(music_id)"\
    }