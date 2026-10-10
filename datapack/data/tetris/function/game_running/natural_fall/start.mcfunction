scoreboard players set #remaining_time tetris.num 20

execute if predicate tetris:reach_the_bottom run return run function tetris:game_running/natural_fall/end

function tetris:game_running/difficulty_level_up/start

function tetris:game_running/collision_check/initialize

execute as 1-0-1-0-400000005 on passengers run scoreboard players add @s tetris.pos.x.transformed 1

function tetris:game_running/collision_check/try/natural_fall