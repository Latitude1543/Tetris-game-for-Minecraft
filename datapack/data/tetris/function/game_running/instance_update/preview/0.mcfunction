data modify storage tetris:game_render preview set value \
    [\
        [{text:"AfAb",hover_event:{action:"show_text",value:"下一个将落下的方块"}},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},"AbAf\n"],\
        [{text:"AfAb",hover_event:{action:"show_text",value:"下一个将落下的方块"}},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},"AbAf\n"],\
        [{text:"AfAb",hover_event:{action:"show_text",value:"下一个将落下的方块"}},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},"AbAf\n"],\
        [{text:"AfAb",hover_event:{action:"show_text",value:"下一个将落下的方块"}},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},"AbAf"],\
    ]
execute as 1-0-1-0-400000005 on passengers run function tetris:game_running/instance_update/preview/1

data modify storage tetris:game_render dialog.instance[-1][-1] set from storage tetris:game_render preview[-1]
data modify storage tetris:game_render dialog.instance[-2][-1] set from storage tetris:game_render preview[-2]
data modify storage tetris:game_render dialog.instance[-3][-1] set from storage tetris:game_render preview[-3]
data modify storage tetris:game_render dialog.instance[-4][-1] set from storage tetris:game_render preview[-4]