execute if predicate tetris:row_check run \
    function tetris:game_running/instance_update/row/erase with storage tetris:num lowest_one
execute unless predicate tetris:row_check store result storage tetris:num lowest_one.x int 1 run \
    scoreboard players remove *lowest_one tetris.pos.x 1
scoreboard players add #run_times tetris.num 1
execute if score #run_times tetris.num matches ..3 run return run function tetris:game_running/row_check/start

function tetris:game_running/instance_update/row/fix

#score
execute if score #row_count tetris.num matches 1 run scoreboard players add @s tetris.game.score 100
execute if score #row_count tetris.num matches 2 run scoreboard players add @s tetris.game.score 200
execute if score #row_count tetris.num matches 3 run scoreboard players add @s tetris.game.score 300
execute if score #row_count tetris.num matches 4 run scoreboard players add @s tetris.game.score 600

#判定游戏是否失败
execute if predicate tetris:game_over run return run function tetris:game_running/end/0
##未失败：
#下一轮
function tetris:game_running/next_t/start
scoreboard players set #remaining_time tetris.num 0