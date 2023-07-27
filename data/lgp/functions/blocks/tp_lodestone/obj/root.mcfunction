#移除
    execute unless block ~ ~-1 ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/obj/remove

#状态监测
    #维护lgp.tp_lodestone.activatedSuccess分数，以标识是否激活
        function lgp:blocks/tp_lodestone/obj/root/status/if_activate
    
    #监测并标识是否受到左右键点击
        function lgp:blocks/tp_lodestone/obj/root/status/if_click

#交互事件
    #如果受到攻击
        execute if score @s lgp.tp_lodestone.leftClick matches 1.. run function lgp:blocks/tp_lodestone/obj/root/attack

    #如果被右键交互
        execute if score @s lgp.tp_lodestone.rightClick matches 1.. run function lgp:blocks/tp_lodestone/obj/root/interaction

    #玩家成功激活磁石
        execute if score @s lgp.tp_lodestone.activatedSuccess matches 4.. at @s run function lgp:blocks/tp_lodestone/obj/root/activate

    #磁石转换传送目的地
        #execute if score @s lgp.tp_lodestone.rightClick matches 1.. run function lgp:blocks/tp_lodestone/event/change_destination

#execute if entity @s[tag=lgp.tp_lodestone.activated] run function lgp:blocks/tp_lodestone/event/activated

#execute if entity @s[tag=lgp.tp_lodestone.turn_next_destination] run function lgp:blocks/tp_lodestone/event/change_destination