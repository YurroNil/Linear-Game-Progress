data merge entity @s {Tags:["lgp.tp_lodestone.root"],interaction:{player:[I; 0, 0, 0, 0], timestamp: 0L},attack:{player:[I; 0, 0, 0, 0], timestamp: 0L},width:0.3f,height:0.5f}

scoreboard players set @s lgp.tp_lodestone.index 0
scoreboard players set @s lgp.tp_lodestone.leftClick 0
scoreboard players set @s lgp.tp_lodestone.rightClick 0
scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0

scoreboard players operation @s lgp.tp_lodestone.index = #lgp.tp_lodestone.current_place_index lgp.int

#添加当前坐标到destination_list列表
    function lgp:blocks/tp_lodestone/obj/root/set_list_pos


    

