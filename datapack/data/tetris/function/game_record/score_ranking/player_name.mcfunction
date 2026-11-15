data modify entity @s text set value {selector:"@a[tag=tetris.is_playing,limit=1]"}
data modify storage tetris:game_record current_player.name set from entity @s text.text
data modify entity @s text set value ""