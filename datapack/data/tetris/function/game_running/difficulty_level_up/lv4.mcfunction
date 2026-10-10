execute store result score #remaining_time tetris.num run compute default float tetris:lv4
execute if score #difficulty_level tetris.num matches 4 run return fail
data modify storage tetris:game_render dialog.difficulty_level set value "\u00a7c4"
scoreboard players set #difficulty_level tetris.num 4