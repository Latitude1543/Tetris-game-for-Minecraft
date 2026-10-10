execute store result storage tetris:num pos.x int 1 run \
    scoreboard players get @s tetris.pos.x
execute store result storage tetris:num pos.y int 1 run \
    scoreboard players get @s tetris.pos.y
function tetris:game_running/instance_update/after_collision/1 with storage tetris:num pos