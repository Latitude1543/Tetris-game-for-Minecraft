$dialog show @s \
    {\
        type: "minecraft:multi_action",\
        title: "俄罗斯方块 得分：\u00a7b$(score)  \u00a7f难度等级：$(difficulty_level)",\
        after_action: "none",\
        can_close_with_escape: false,\
        columns: 2,\
        pause: false,\
        body: {\
            type: "minecraft:plain_message",\
            contents: {\
                text: "",\
                font: "tetris:dialog",\
                shadow_color: 0,\
                extra: $(instance)\
            }\
        },\
        actions: [\
            {\
                label: "旋转",\
                action: {\
                    type: "minecraft:run_command",\
                    command: "trigger tetris.game set 6"\
                },\
                width: 80\
            },\
            {\
                label: "hard drop",\
                action: {\
                    type: "minecraft:run_command",\
                    command: "trigger tetris.game set 7"\
                },\
                tooltip: "直接降落至底部或下方方块表面",\
                width: 80\
            }\
        ]\
    }