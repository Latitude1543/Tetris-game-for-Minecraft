execute store result score *n tetris.num run random value 1..7

execute if score *n tetris.num matches 1 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {1:1}
execute if score *n tetris.num matches 2 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {2:1}
execute if score *n tetris.num matches 3 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {3:1}
execute if score *n tetris.num matches 4 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {4:1}
execute if score *n tetris.num matches 5 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {5:1}
execute if score *n tetris.num matches 6 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {6:1}
execute if score *n tetris.num matches 7 store success score #bool tetris.num run data modify storage tetris:game_running next_t.pool merge value {7:1}

execute if score #bool tetris.num matches 0 run return run function tetris:game_running/next_t/new_sequence/generate
execute store result storage tetris:game_running next_t.n int 1 run scoreboard players get *n tetris.num
data modify storage tetris:game_running next_t.sequence append from storage tetris:game_running next_t.n

# execute store result score #roll_times tetris.num run data get storage tetris:game_running next_t.sequence
scoreboard players add #roll_times tetris.num 1
execute if score #roll_times tetris.num matches ..6 run function tetris:game_running/next_t/new_sequence/generate