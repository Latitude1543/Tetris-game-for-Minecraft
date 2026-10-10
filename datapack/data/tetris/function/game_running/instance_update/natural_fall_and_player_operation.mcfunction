execute if score @s tetris.pos.x matches 0..19 run function tetris:game_running/instance_update/erase/0

scoreboard players operation @s tetris.pos.x = @s tetris.pos.x.transformed
scoreboard players operation @s tetris.pos.y = @s tetris.pos.y.transformed

execute if score @s tetris.pos.x matches 0..19 run function tetris:game_running/instance_update/fill/0