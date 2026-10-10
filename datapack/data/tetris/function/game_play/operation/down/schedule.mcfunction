execute if score #drop_times tetris.num matches 0 run return fail
scoreboard players set #remaining_time tetris.num 0
scoreboard players remove #drop_times tetris.num 1
schedule function tetris:game_play/operation/down/schedule 1t