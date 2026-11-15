function tetris:game_running/difficulty_level/start
scoreboard players operation #remaining_time tetris.num = #natural_fall_time tetris.num

execute if predicate tetris:reach_the_bottom run return run function tetris:game_running/loop/natural_fall/end

function tetris:game_running/collision_check/init

execute as 1-0-1-0-400000005 on passengers run scoreboard players add @s tetris.pos.x.transformed 1

function tetris:game_running/collision_check/try/natural_fall