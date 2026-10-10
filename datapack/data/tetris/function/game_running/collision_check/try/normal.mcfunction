execute as 1-0-1-0-400000005 on passengers run \
    function tetris:game_running/collision_check/if_block_1/test
execute if function tetris:game_running/collision_check/would_collide run return fail

execute as 1-0-1-0-400000005 on passengers run function tetris:game_running/instance_update/natural_fall_and_player_operation
function tetris:game_render/start