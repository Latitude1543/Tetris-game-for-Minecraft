# scoreboard players enable @a[tag=tetris.is_playing] tetris.game

scoreboard players enable @a tetris.menu
execute as @a[scores={tetris.menu=1}] run function tetris:game_play/new_game/start
execute as @a[scores={tetris.game.abnormal_exit=1..}] run \
    function tetris:game_running/abnormal_exit/msg
execute as @a[scores={tetris.game=-1}] run function tetris:game_running/abnormal_exit/continue

execute as @a[scores={tetris.game=1}] run function tetris:game_play/pause-continue/0
execute as @a[scores={tetris.game=2}] run function tetris:game_play/end
execute as @a[scores={tetris.game=3},tag=!tetris.paused] run function tetris:game_play/operation/left
execute as @a[scores={tetris.game=4},tag=!tetris.paused] run function tetris:game_play/operation/right
execute as @a[scores={tetris.game=5},tag=!tetris.paused] run function tetris:game_play/operation/down/start
execute as @a[scores={tetris.game=6},tag=!tetris.paused] run function tetris:game_play/operation/rotate/start
execute as @a[scores={tetris.game=7},tag=!tetris.paused] run function tetris:game_play/operation/hard_drop/start

execute as @a[tag=tetris.is_playing,tag=!tetris.paused] run function tetris:game_running/natural_fall/time