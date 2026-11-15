execute as @s[scores={tetris.game.settings=4}] run function tetris:game_settings/reset/music
execute as @s[scores={tetris.game.settings=5}] run function tetris:game_settings/reset/difficulty
execute as @s[scores={tetris.game.settings=6}] run function tetris:game_settings/reset/display
execute as @s[scores={tetris.game.settings=7}] run function tetris:game_settings/reset/all
dialog show @s tetris:game_settings/menu
scoreboard players reset @s tetris.game.settings