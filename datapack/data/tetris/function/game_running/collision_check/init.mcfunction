execute as 1-0-1-0-400000005 on passengers run scoreboard players operation @s tetris.pos.x.transformed = @s tetris.pos.x
execute as 1-0-1-0-400000005 on passengers run scoreboard players operation @s tetris.pos.y.transformed = @s tetris.pos.y
scoreboard players set #bool tetris.num 0
data modify storage tetris:game_running collision_check.terms set value []