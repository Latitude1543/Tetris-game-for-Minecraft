say [Tetris] 数据包已重新加载

scoreboard objectives add tetris.num dummy
scoreboard objectives add tetris.pos.x dummy
scoreboard objectives add tetris.pos.y dummy
scoreboard objectives add tetris.pos.x.transformed dummy
scoreboard objectives add tetris.pos.y.transformed dummy

scoreboard objectives add tetris.game trigger
scoreboard objectives add tetris.menu trigger
scoreboard objectives add tetris.game.settings trigger
scoreboard objectives add tetris.game.score dummy
scoreboard objectives add tetris.game.pause-continue dummy
scoreboard objectives add tetris.game.abnormal_exit minecraft.custom:minecraft.leave_game

forceload add -1 -1 1 1
execute unless entity 1-0-1-0-400000005 if loaded 0 0 0 run summon minecraft:item_display 0.0 0.0 0.0 \
    {\
        UUID: [I;1,1,4,5],\
        Passengers: [\
            {\
                id: "minecraft:marker",\
                UUID: [I;1,1,1,1]\
            },\
            {\
                id: "minecraft:marker",\
                UUID: [I;1,1,1,2]\
            },\
            {\
                id: "minecraft:marker",\
                UUID: [I;1,1,1,3]\
            },\
            {\
                id: "minecraft:marker",\
                UUID: [I;1,1,1,4]\
            }\
        ]\
    }