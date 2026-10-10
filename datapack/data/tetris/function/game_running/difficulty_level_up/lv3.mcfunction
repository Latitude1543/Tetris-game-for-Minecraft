execute store result score #remaining_time tetris.num run compute default float tetris:lv3
execute if score #difficulty_level tetris.num matches 3 run return fail
data modify storage tetris:game_render dialog.difficulty_level set value "\u00a7e3"
scoreboard players set #difficulty_level tetris.num 3