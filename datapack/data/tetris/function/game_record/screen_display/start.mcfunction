execute as @s[scores={tetris.game.record=1}] run \
    data modify storage tetris:game_record screen_display.opening_difficulty set value "\u00a7a1"
execute as @s[scores={tetris.game.record=2}] run \
    data modify storage tetris:game_record screen_display.opening_difficulty set value "\u00a7e2"
execute as @s[scores={tetris.game.record=3}] run \
    data modify storage tetris:game_record screen_display.opening_difficulty set value "\u00a7c3"
execute as @s[scores={tetris.game.record=4}] run \
    data modify storage tetris:game_record screen_display.opening_difficulty set value "\u00a754"

execute store result storage tetris:num game_record_data.Pointer int 1 run \
    scoreboard players remove @s tetris.game.record 1
scoreboard players reset @s tetris.game.record
function tetris:game_record/game_data/copy with storage tetris:num game_record_data
data modify storage tetris:game_record screen_display.contents set value []
function tetris:game_record/game_data/this with storage tetris:game_record data.this[0]
function tetris:game_record/game_data/this with storage tetris:game_record data.this[1]
function tetris:game_record/game_data/this with storage tetris:game_record data.this[2]
function tetris:game_record/screen_display/dialog with storage tetris:game_record screen_display