##排名比较
#得分是否小于等于第三名：
#   否：
#       得分是否小于等于第二名：
#           否：
#               得分是否小于等于第一名：
#                   否：
#                       记为第一名
#                   是：
#                       记为第二名
#           是：
#               记为第三名
#   是：
#       结束
execute if predicate tetris:score_ranking/3 run return fail
$execute if predicate tetris:score_ranking/2 run return run data modify storage tetris:game_record data.list[$(Pointer)][2] \
    set from storage tetris:game_record current_player
$execute if predicate tetris:score_ranking/1 run return run data modify storage tetris:game_record data.list[$(Pointer)][1] \
    set from storage tetris:game_record current_player
$data modify storage tetris:game_record data.list[$(Pointer)][0] set from storage tetris:game_record current_player