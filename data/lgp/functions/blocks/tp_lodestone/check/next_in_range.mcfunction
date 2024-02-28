scoreboard players add #current_place_index lgp.tp_lodestone.var 0

execute if score #current_place_index lgp.tp_lodestone.var < #max_index lgp.tp_lodestone.var if score #current_place_index lgp.tp_lodestone.var > #0 lgp.int run return 1
