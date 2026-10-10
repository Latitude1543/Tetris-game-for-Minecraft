execute as 1-0-1-0-400000005 on passengers run \
    function tetris:game_running/collision_check/if_block_1/test
execute if function tetris:game_running/collision_check/would_collide run return run \
    function tetris:game_play/operation/hard_drop/loop/end

scoreboard players set #bool tetris.num 0
data modify storage tetris:game_running collision_check.terms set value []
function tetris:game_play/operation/hard_drop/loop/start