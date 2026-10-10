#实例更新
execute as 1-0-1-0-400000005 on passengers run function tetris:game_running/instance_update/after_collision/0
#行消除检测
scoreboard players set #run_times tetris.num 0
scoreboard players set #row_count tetris.num 0
# tag @s add tetris.paused
execute store result score *lowest_one tetris.pos.x store result storage tetris:num lowest_one.x int 1 run \
    compute default integer tetris:max/x
function tetris:game_running/row_check/start