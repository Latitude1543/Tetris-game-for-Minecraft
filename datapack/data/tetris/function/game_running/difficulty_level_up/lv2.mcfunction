execute store result score #remaining_time tetris.num run compute default float tetris:lv2
execute if score #difficulty_level tetris.num matches 2 run return fail
data modify storage tetris:game_render dialog.difficulty_level set value "\u00a7a2"
scoreboard players set #difficulty_level tetris.num 2