#玩家不在传送门废墟进入下界传送门，则传送门会被破坏
    execute as @a at @s unless score @s lgp.allow_entherTheNether matches 1 if predicate lgp:entities/player/protal_block_in_current_location run function lgp:locations/worldgen_loop/protal/the_nether/destroy

