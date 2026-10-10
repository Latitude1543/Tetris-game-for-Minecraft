tag @s add tetris.paused
data modify storage tetris:game_render dialog.instance[2][-1][1].text set value "A\u0400"
data modify storage tetris:game_render dialog.instance[2][-1][1].hover_event.value set value "点击继续游戏"
function tetris:game_render/show_dialog with storage tetris:game_render dialog