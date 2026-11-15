scoreboard players reset @s tetris.game
scoreboard players enable @s tetris.game
execute as @s[tag=tetris.paused] run return fail
execute if score *next_t.current tetris.num matches 7 run return fail

#音效
execute if score #rotate_music_enable tetris.num matches 1 run stopsound @s ui minecraft:ui.button.click
execute if score #rotate_music_enable tetris.num matches 1 \
at @s run playsound minecraft:block.vault.reject_rewarded_player

function tetris:game_running/collision_check/init

execute if score *next_t.current tetris.num matches 6 as 1-0-1-0-400000005 on passengers run function tetris:game_play/operation/rotate/type/i
execute unless score *next_t.current tetris.num matches 6 as 1-0-1-0-400000005 on passengers run function tetris:game_play/operation/rotate/type/l-j-s-z-t

execute store result score #left_one tetris.pos.y.transformed run compute default integer tetris:min/y_trf
execute store result score #right_one tetris.pos.y.transformed run compute default integer tetris:max/y_trf
execute if score #left_one tetris.pos.y.transformed matches ..-1 run function tetris:game_play/operation/rotate/if_in_the_wall/left
execute if score #right_one tetris.pos.y.transformed matches 10.. run function tetris:game_play/operation/rotate/if_in_the_wall/right

execute store result score *lowest_one tetris.pos.x.transformed run compute default integer tetris:max/x_trf
execute if score *lowest_one tetris.pos.x.transformed matches 20.. run function tetris:game_play/operation/rotate/if_over_the_bottom

function tetris:game_running/collision_check/try/normal