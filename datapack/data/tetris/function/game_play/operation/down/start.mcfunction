scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
execute as @s[tag=tetris.paused] run return fail

execute if score #move_music_enable tetris.num matches 1 \
at @s run playsound minecraft:block.copper_bulb.place player @s

scoreboard players add @s tetris.game.score 1
execute store result score #drop_times tetris.num run random value 3..5
function tetris:game_play/operation/down/schedule