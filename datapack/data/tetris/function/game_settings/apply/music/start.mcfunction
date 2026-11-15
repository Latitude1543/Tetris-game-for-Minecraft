execute store result score #row_erase_music_enable tetris.num run compute default integer tetris:settings/music/row_erase_bool
execute if score #row_erase_music_enable tetris.num matches 1 run \
    data modify storage tetris:game_settings open.music.last_bool1 set value "true"
execute if score #row_erase_music_enable tetris.num matches 0 run \
    data modify storage tetris:game_settings open.music.last_bool1 set value "false"

execute store result score #hd_music_enable tetris.num run compute default integer tetris:settings/music/hd_bool
execute if score #hd_music_enable tetris.num matches 1 run \
    data modify storage tetris:game_settings open.music.last_bool2 set value "true"
execute if score #hd_music_enable tetris.num matches 0 run \
    data modify storage tetris:game_settings open.music.last_bool2 set value "false"

execute store result score #rotate_music_enable tetris.num run compute default integer tetris:settings/music/rotate_bool
execute if score #rotate_music_enable tetris.num matches 1 run \
    data modify storage tetris:game_settings open.music.last_bool3 set value "true"
execute if score #rotate_music_enable tetris.num matches 0 run \
    data modify storage tetris:game_settings open.music.last_bool3 set value "false"

execute store result score #move_music_enable tetris.num run compute default integer tetris:settings/music/move_bool
execute if score #move_music_enable tetris.num matches 1 run \
    data modify storage tetris:game_settings open.music.last_bool4 set value "true"
execute if score #move_music_enable tetris.num matches 0 run \
    data modify storage tetris:game_settings open.music.last_bool4 set value "false"

execute store result score #game_music_enable tetris.num run compute default integer tetris:settings/music/music_bool
execute if score #game_music_enable tetris.num matches 1 run \
    data modify storage tetris:game_settings open.music.last_bool5 set value "true"
execute if score #game_music_enable tetris.num matches 0 run \
    data modify storage tetris:game_settings open.music.last_bool5 set value "false"

execute store result score #game_music_id tetris.num run compute default integer tetris:settings/music/music_id
function tetris:game_settings/apply/music/music_id

scoreboard players reset @s tetris.game_music
dialog show @s tetris:game_settings/menu