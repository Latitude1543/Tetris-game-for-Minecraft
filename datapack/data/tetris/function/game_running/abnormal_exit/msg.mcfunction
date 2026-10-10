scoreboard players reset @s tetris.game.abnormal_exit
execute as @s[tag=!tetris.is_playing] run return fail
execute as @s[tag=!tetris.paused] run return fail
tag @s remove tetris.is_playing
scoreboard players enable @s tetris.game
tellraw @s ["[Tetris] 你上次意外地退出了游戏，是否继续游戏？\n点击",{text:"这里",click_event:{action:"run_command",command:"trigger tetris.game set -1"},underlined:true},"继续上次的游戏"]