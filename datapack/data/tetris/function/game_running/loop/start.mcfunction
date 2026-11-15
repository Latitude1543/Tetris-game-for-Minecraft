execute if score #remaining_time tetris.num matches 1.. run scoreboard players remove #remaining_time tetris.num 1
execute if score #remaining_time tetris.num matches 0 run function tetris:game_running/loop/natural_fall/start

execute if score #game_music_enable tetris.num matches 1 \
    if score #music_time tetris.num matches 1.. run scoreboard players remove #music_time tetris.num 1
execute if score #game_music_enable tetris.num matches 1 \
    if score #music_time tetris.num matches 0 at @s run function tetris:game_running/loop/music/start