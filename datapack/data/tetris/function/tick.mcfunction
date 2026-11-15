scoreboard players enable @a tetris.menu
scoreboard players enable @a tetris.game.record
scoreboard players enable @a tetris.game.settings

#排行榜
execute as @a[scores={tetris.game.record=1..4}] run function tetris:game_record/screen_display/start

#新游戏
execute as @a[scores={tetris.menu=1}] run function tetris:game_play/new_game
#异常退出游戏
execute as @a[scores={tetris.game.abnormal_exit=1..}] run \
    function tetris:game_running/abnormal_exit/msg
execute as @a[scores={tetris.game=-1}] run function tetris:game_running/abnormal_exit/continue

#玩家操作
execute as @a[scores={tetris.game=1}] run function tetris:game_play/pause-continue/0
execute as @a[scores={tetris.game=2}] run function tetris:game_play/end
execute as @a[scores={tetris.game=3}] run function tetris:game_play/operation/left
execute as @a[scores={tetris.game=4}] run function tetris:game_play/operation/right
execute as @a[scores={tetris.game=5}] run function tetris:game_play/operation/down/start
execute as @a[scores={tetris.game=6}] run function tetris:game_play/operation/rotate/start
execute as @a[scores={tetris.game=7}] run function tetris:game_play/operation/hard_drop/start

#音乐设置
execute as @a[scores={tetris.game.settings=1}] run function tetris:game_settings/open/music
execute as @a[scores={tetris.game_music=1..}] run function tetris:game_settings/apply/music/start

#难度设置
execute as @a[scores={tetris.game.settings=2}] run function tetris:game_settings/open/difficulty
execute as @a[scores={tetris.game_difficulty=1..}] run function tetris:game_settings/apply/difficulty/start

#显示设置
execute as @a[scores={tetris.game.settings=3}] run function tetris:game_settings/open/display
execute as @a[scores={tetris.game_display=1..}] run function tetris:game_settings/apply/display

#重置设置
execute as @a[scores={tetris.game.settings=4..7}] run function tetris:game_settings/reset/start

#方块自然下落与音乐循环播放
execute as @a[tag=tetris.is_playing,tag=!tetris.paused] run function tetris:game_running/loop/start