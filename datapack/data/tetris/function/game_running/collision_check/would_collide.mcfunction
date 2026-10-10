function tetris:game_running/collision_check/if_block_1/check with storage tetris:game_running collision_check
execute if score #bool tetris.num matches 1 run return 1
return fail