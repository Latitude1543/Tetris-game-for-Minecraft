scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game

execute store result score #left_one tetris.pos.y run compute default integer tetris:min/y
execute if score #left_one tetris.pos.y matches ..0 run return fail

function tetris:game_running/collision_check/initialize

execute as 1-0-1-0-400000005 on passengers run scoreboard players remove @s tetris.pos.y.transformed 1

function tetris:game_running/collision_check/try/normal