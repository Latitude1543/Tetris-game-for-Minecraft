execute as @s[scores={tetris.game_display=10}] run scoreboard players set #setting.game_feedback_enable tetris.num 0
execute as @s[scores={tetris.game_display=11}] run scoreboard players set #setting.game_feedback_enable tetris.num 1

execute if score #setting.game_feedback_enable tetris.num matches 1 run data modify storage tetris:game_settings open.display.last_bool set value "true"
execute if score #setting.game_feedback_enable tetris.num matches 0 run data modify storage tetris:game_settings open.display.last_bool set value "false"

scoreboard players reset @s tetris.game_display
dialog show @s tetris:game_settings/menu