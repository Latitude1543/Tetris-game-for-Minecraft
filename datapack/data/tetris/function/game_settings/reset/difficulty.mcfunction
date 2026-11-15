data modify storage tetris:game_settings open.difficulty.macro set value "$(difficulty)"
data modify storage tetris:game_settings open.difficulty.last_difficulty set value 3
scoreboard players set #game_opening_difficulty tetris.num 3
data modify storage tetris:game_render dialog.opening_difficulty set value "\u00a7c3"