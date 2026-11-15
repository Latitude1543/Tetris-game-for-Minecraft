scoreboard players set #music_time tetris.num 4200
stopsound @s
execute if score #game_music_id tetris.num matches 1 run playsound minecraft:music_disc.otherside player @s
execute if score #game_music_id tetris.num matches 2 run playsound minecraft:music_disc.cat player @s
execute if score #game_music_id tetris.num matches 3 run playsound minecraft:music_disc.mall player @s
execute if score #game_music_id tetris.num matches 4 run playsound minecraft:music_disc.strad player @s
execute if score #game_music_id tetris.num matches 5 run playsound minecraft:music_disc.wait player @s
execute if score #game_music_id tetris.num matches 6 run playsound minecraft:music_disc.bounce player @s
execute if score #game_music_id tetris.num matches 7 run playsound minecraft:music_disc.creator player @s