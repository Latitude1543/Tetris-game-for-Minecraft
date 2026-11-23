$data modify storage tetris:game_record screen_display.contents append value \
    {\
        "player": "$(name)",\
        "object": "player",\
        "extra": [\
            "  $(name)",\
            "  得分：$(score)",\
            "  难度等级：LV$(lv)\n\n"\
        ]\
    }