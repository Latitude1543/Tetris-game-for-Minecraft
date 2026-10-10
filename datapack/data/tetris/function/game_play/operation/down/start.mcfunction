scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
scoreboard players add @s tetris.game.score 1
execute store result score #drop_times tetris.num run random value 3..5
function tetris:game_play/operation/down/schedule