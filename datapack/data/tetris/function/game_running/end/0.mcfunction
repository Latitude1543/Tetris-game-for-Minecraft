tag @s remove tetris.is_playing
tag @s remove tetris.paused
data modify storage tetris:num result_screen.score set from storage tetris:game_render dialog.score
function tetris:game_running/end/show_result_screen with storage tetris:num result_screen