scoreboard players reset @s tetris.menu
execute unless entity 1-0-1-0-400000005 run return fail
scoreboard players enable @s tetris.game
scoreboard players set @s tetris.game.score 0
scoreboard players set @s tetris.game.pause-continue 1
tag @s add tetris.is_playing

#游戏规则send_command_feedback的状态
execute store result score #last_game_feedback_enable tetris.num run gamerule send_command_feedback
scoreboard players operation #game_feedback_enable tetris.num = #setting.game_feedback_enable tetris.num
function tetris:game_play/game_feedback

#游戏实例初始化
data modify storage tetris:game_running instance set value \
    [\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0]\
    ]

data modify storage tetris:game_render dialog.instance set value \
    [\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0],\
        [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0]\
    ]

#操作区初始化
function tetris:game_play/operation_area_init

#下落方块初始化
function tetris:game_running/next_t/new_sequence/start
data modify storage tetris:game_running next_t.list1 set from storage tetris:game_running next_t.sequence
function tetris:game_running/next_t/new_sequence/start
data modify storage tetris:game_running next_t.list2 set from storage tetris:game_running next_t.sequence
function tetris:game_running/next_t/start

#难度等级初始化
scoreboard players reset #cp tetris.num

#游戏画面渲染
scoreboard players set #remaining_time tetris.num 0
function tetris:game_render/start

#音乐播放
scoreboard players set #music_time tetris.num 0