scoreboard players reset @s tetris.game
#更新排行榜
function tetris:game_record/score_ranking/start
#移除正在游玩标签
tag @s remove tetris.is_playing
tag @s remove tetris.paused
#音效
execute at @s run playsound minecraft:entity.creeper.death player @s
#死亡屏幕
data modify storage tetris:num result_screen.score set from storage tetris:game_render dialog.score
function tetris:game_running/end/show_result_screen with storage tetris:num result_screen
#音乐停
function tetris:game_running/loop/music/stop
#恢复send_command_feedback的设置
scoreboard players operation #game_feedback_enable tetris.num = #last_game_feedback_enable tetris.num
function tetris:game_play/game_feedback