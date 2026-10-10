execute store result storage tetris:num pos.x int 1 run \
    scoreboard players get @s tetris.pos.x.transformed
execute store result storage tetris:num pos.y int 1 run \
    scoreboard players get @s tetris.pos.y.transformed
execute as @s[scores={tetris.pos.x.transformed=0..19}] run \
    function tetris:game_running/collision_check/if_block_1/1 with storage tetris:num pos