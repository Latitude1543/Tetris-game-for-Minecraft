##获取当前玩家游戏数据
#玩家名
execute as 1-0-1-0-400000005 run function tetris:game_record/score_ranking/player_name
#得分
execute store result storage tetris:game_record current_player.score int 1 run \
    scoreboard players get @s tetris.game.score

##将数据存储在游戏纪录列表中
#根据开局难度分类，再根据得分排名，只取前三，忽略得分小于等于前三者的纪录
scoreboard players operation #Pointer tetris.num = #game_opening_difficulty tetris.num
execute store result storage tetris:num game_record_data.Pointer int 1 run \
    scoreboard players remove #Pointer tetris.num 1
function tetris:game_record/game_data/copy with storage tetris:num game_record_data
function tetris:game_record/score_ranking/rank with storage tetris:num game_record_data