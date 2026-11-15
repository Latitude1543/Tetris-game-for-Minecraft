execute store result score #difficulty_level tetris.num run compute default integer tetris:difficulty_lv
execute store success score #bool tetris.num run scoreboard players operation #cp tetris.num = #difficulty_level tetris.num
execute if score #bool tetris.num matches 0 run return fail
execute if score #difficulty_level tetris.num matches 1 run return run \
    function tetris:game_running/difficulty_level/lv1
execute if score #difficulty_level tetris.num matches 2 run return run \
    function tetris:game_running/difficulty_level/lv2
execute if score #difficulty_level tetris.num matches 3 run return run \
    function tetris:game_running/difficulty_level/lv3
execute if score #difficulty_level tetris.num matches 4 run return run \
    function tetris:game_running/difficulty_level/lv4
execute if score #difficulty_level tetris.num matches 5.. run \
    function tetris:game_running/difficulty_level/lv5_