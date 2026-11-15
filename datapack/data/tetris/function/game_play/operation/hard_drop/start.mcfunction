scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
execute as @s[tag=tetris.paused] run return fail
execute if score #hd_music_enable tetris.num matches 1 run stopsound @s ui minecraft:ui.button.click

function tetris:game_running/collision_check/init
function tetris:game_play/operation/hard_drop/loop/start