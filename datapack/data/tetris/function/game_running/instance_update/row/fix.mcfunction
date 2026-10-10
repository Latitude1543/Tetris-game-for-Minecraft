function tetris:game_play/new_game/operation_area_init

data modify storage tetris:game_render dialog.instance[-1][-1] set from storage tetris:game_render preview[-1]
data modify storage tetris:game_render dialog.instance[-2][-1] set from storage tetris:game_render preview[-2]
data modify storage tetris:game_render dialog.instance[-3][-1] set from storage tetris:game_render preview[-3]
data modify storage tetris:game_render dialog.instance[-4][-1] set from storage tetris:game_render preview[-4]