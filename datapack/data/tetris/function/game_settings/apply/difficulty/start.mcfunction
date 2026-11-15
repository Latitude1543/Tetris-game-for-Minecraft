execute as @s[scores={tetris.game_difficulty=1}] run function tetris:game_settings/apply/difficulty/1
execute as @s[scores={tetris.game_difficulty=2}] run function tetris:game_settings/apply/difficulty/2
execute as @s[scores={tetris.game_difficulty=3}] run function tetris:game_settings/apply/difficulty/3
execute as @s[scores={tetris.game_difficulty=4}] run function tetris:game_settings/apply/difficulty/4

execute store result storage tetris:game_settings open.difficulty.last_difficulty int 1 run \
    scoreboard players get @s tetris.game_difficulty
scoreboard players reset @s tetris.game_difficulty
dialog show @s tetris:game_settings/menu