$data remove storage tetris:game_running instance[$(x)]
data modify storage tetris:game_running instance prepend value [0,0,0,0,0,0,0,0,0,0]
$data remove storage tetris:game_render dialog.instance[$(x)]
data modify storage tetris:game_render dialog.instance prepend value [{text:"fAb",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},{text:"Ab",extra:[""]},0]
# function tetris:game_running/instance_update/row/fix
scoreboard players add #row_count tetris.num 1