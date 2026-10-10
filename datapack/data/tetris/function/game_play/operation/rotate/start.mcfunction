scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
execute as @s[tag=tetris.paused] run return fail
execute if score *next_t.current tetris.num matches 7 run return fail

function tetris:game_running/collision_check/initialize

execute if score *next_t.current tetris.num matches 5..6 as 1-0-1-0-400000005 on passengers run function tetris:game_play/operation/rotate/type/i-t
execute if score *next_t.current tetris.num matches 1..4 as 1-0-1-0-400000005 on passengers run function tetris:game_play/operation/rotate/type/l-j-s-z
execute store result score #left_one tetris.pos.y.transformed run compute default integer tetris:rotate/if_in_the_wall/left
execute store result score #right_one tetris.pos.y.transformed run compute default integer tetris:rotate/if_in_the_wall/right
execute if score #left_one tetris.pos.y.transformed matches ..-1 run function tetris:game_play/operation/rotate/if_in_the_wall/left
execute if score #right_one tetris.pos.y.transformed matches 10.. run function tetris:game_play/operation/rotate/if_in_the_wall/right

function tetris:game_running/collision_check/try/normal