$data modify storage tetris:game_running collision_check.terms append value \
    {\
        type: "minecraft:int_value_check",\
        value: {\
            type: "minecraft:storage",\
            storage: "tetris:game_running",\
            path: "instance[$(x)][$(y)]"\
        },\
        test: 1\
    }