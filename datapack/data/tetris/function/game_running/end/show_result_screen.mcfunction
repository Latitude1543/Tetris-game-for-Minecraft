$dialog show @s \
    {\
        type: "minecraft:multi_action",\
        title: "结算画面",\
        columns: 1,\
        pause: false,\
        body: {\
            type: "minecraft:plain_message",\
            contents: "\u00a7eGame Over !\n\n\u00a7f得分： \u00a7b$(score)"\
        },\
        actions: [\
            {\
                label: "返回到菜单界面",\
                action: {\
                    type: "minecraft:show_dialog",\
                    dialog: "tetris:main_window"\
                },\
                width: 100\
            },\
            {\
                label: "查看排行榜",\
                action: {\
                    type: "minecraft:run_command",\
                    command: "trigger tetris.menu set 2"\
                },\
                width: 100\
            }\
        ]\
    }