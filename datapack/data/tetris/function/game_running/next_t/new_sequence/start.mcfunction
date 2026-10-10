data modify storage tetris:game_running next_t.pool set value {}
data modify storage tetris:game_running next_t.sequence set value []
scoreboard players set #roll_times tetris.num 0
function tetris:game_running/next_t/new_sequence/generate