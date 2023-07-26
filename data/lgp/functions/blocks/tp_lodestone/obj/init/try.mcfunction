#current_place_index：当前传送磁石对应的nbt数据列表中的下标
#max_count：最大传送磁石个数，传送磁石总数量只能小于或等于这个值
    scoreboard players add #lgp.tp_lodestone.current_place_index lgp.int 0
    scoreboard players set #lgp.tp_lodestone.max_count lgp.int 16

#不允许临近其他传送磁石
    execute if entity @e[tag=lgp.tp_lodestone.accessory,distance=..1] run function lgp:blocks/tp_lodestone/obj/init/next_tp_lodestone

#若下标已经超过最大值，放置失效
    execute if score #lgp.tp_lodestone.current_place_index lgp.int >= #lgp.tp_lodestone.max_count lgp.int run function lgp:blocks/tp_lodestone/obj/init/out_of_count

#若下标在允许范围内，允许放置
    execute if score #lgp.tp_lodestone.current_place_index lgp.int < #lgp.tp_lodestone.max_count lgp.int run function lgp:blocks/tp_lodestone/obj/init




    
    
   

