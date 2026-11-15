execute as 1-0-1-0-400000005 on passengers run scoreboard players remove @s tetris.pos.x.transformed 1

#score
execute store result score @s tetris.game.score run compute default integer tetris:hard_drop-score

execute as 1-0-1-0-400000005 on passengers run function tetris:game_running/instance_update/natural_fall_and_player_operation
function tetris:game_render/start

execute if score #hd_music_enable tetris.num matches 1 at @s run playsound minecraft:block.pointed_dripstone.land player @s