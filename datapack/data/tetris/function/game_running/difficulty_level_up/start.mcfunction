execute as @s[scores={tetris.game.score=..2999}] run return fail
execute as @s[scores={tetris.game.score=3000..6000}] run return run \
    function tetris:game_running/difficulty_level_up/lv2
execute as @s[scores={tetris.game.score=6000..11999}] run return run \
    function tetris:game_running/difficulty_level_up/lv3
execute as @s[scores={tetris.game.score=12000..}] run return run \
    function tetris:game_running/difficulty_level_up/lv4