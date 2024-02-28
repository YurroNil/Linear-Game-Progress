#加载所需记分板
    scoreboard objectives add lgp.tp_lodestone.power dummy
    scoreboard objectives add lgp.tp_lodestone.var dummy
    scoreboard objectives add lgp.tp_lodestone.index dummy
    scoreboard objectives add lgp.tp_lodestone.tp_timer dummy
    #scoreboard objectives add lgp.tp_lodestone.leftClick dummy
    #scoreboard objectives add lgp.tp_lodestone.rightClick dummy

#加载属性
    scoreboard players add #current_place_index lgp.tp_lodestone.var 0
    #define score_holder #current_place_index
    scoreboard players set #max_index lgp.tp_lodestone.var 15
    #define score_holder #max_index
    
#加载命令存储
    execute unless data storage lgp:blocks/tp_lodestone destination_list run data modify storage lgp:blocks/tp_lodestone destination_list set value []
    #define storage lgp:blocks/tp_lodestone

#加载游标
    function lgp:blocks/tp_lodestone/cursor/load

say tp_lodestone.load