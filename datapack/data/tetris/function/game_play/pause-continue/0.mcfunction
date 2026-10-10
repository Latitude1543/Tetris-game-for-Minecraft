scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
execute store result score @s tetris.game.pause-continue run compute entity @s integer tetris:negate
execute as @s[scores={tetris.game.pause-continue=-1}] run function tetris:game_play/pause-continue/paused
execute as @s[scores={tetris.game.pause-continue=1}] run function tetris:game_play/pause-continue/continue