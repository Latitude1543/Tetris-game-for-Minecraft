##决定顶部下落的方块类型，以及下一个将会从顶部下落的方块类型（即预览方块）
#方块类型：l,j,z,s,t,i,o
#7-bag随机算法：[l,j,z,s,t,i,o] 洗牌，每次取出第一个作为下一个方块，直到7个全部取出，再次重复以上过程
#预览未下落的下一个方块：取第二个作为预览方块
execute store result score *next_t.current tetris.num run data get storage tetris:game_running next_t.list1[0]
execute store result score *next_t.preview tetris.num run data get storage tetris:game_running next_t.list1[1]
data remove storage tetris:game_running next_t.list1[0]
data modify storage tetris:game_running next_t.list1 append from storage tetris:game_running next_t.list2[0]
data remove storage tetris:game_running next_t.list2[0]
execute unless data storage tetris:game_running next_t.list2[0] run function tetris:game_running/next_t/complement
#将数字编号转换为对应方块的四个小方格坐标
function tetris:game_running/next_t/tetromino_type/preview/start
function tetris:game_running/instance_update/preview/0
function tetris:game_running/next_t/tetromino_type/current/start