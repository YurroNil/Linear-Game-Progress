#declare tag lgp.tp_lodestone.rootInit
#declare score_holder #lgp.tp_lodestone.current_place_index
#declare score_holder #lgp.tp_lodestone.max_count

#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#初始化
    #current_place_index：当前传送磁石对应的nbt数据列表中的下标
    #max_count：最大传送磁石个数，传送磁石总数量只能小于或等于这个值
        scoreboard players add #lgp.tp_lodestone.current_place_index lgp.int 0
        scoreboard players set #lgp.tp_lodestone.max_count lgp.int 16
    
    #若下标已经超过最大值，放置失效
        execute as @e[tag=lgp.tp_lodestone.rootInit] at @s if score #lgp.tp_lodestone.current_place_index lgp.int >= #lgp.tp_lodestone.max_count lgp.int run function lgp:blocks/tp_lodestone/init/out_of_count
    
    #不允许临近其他传送磁石
        execute as @e[tag=lgp.tp_lodestone.rootInit] at @s if entity @e[tag=lgp.tp_lodestone.accessory,distance=..1] run function lgp:blocks/tp_lodestone/init/next_tp_lodestone
    
    #若下标在允许范围内，允许放置
        execute as @e[tag=lgp.tp_lodestone.rootInit] at @s if score #lgp.tp_lodestone.current_place_index lgp.int < #lgp.tp_lodestone.max_count lgp.int run function lgp:blocks/tp_lodestone/init/place
    
#移除
    execute as @e[tag=lgp.tp_lodestone.root] at @s unless block ~ ~-1 ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/remove

#状态监测
    #维护lgp.tp_lodestone.activatedSuccess分数，以标识是否激活
        execute as @e[tag=lgp.tp_lodestone.root] at @s run function lgp:blocks/tp_lodestone/status/if_activate
    
    #产生标签，标识对交互实体左右键的玩家
        execute as @e[tag=lgp.tp_lodestone.root] at @s run function lgp:blocks/tp_lodestone/status/if_click

#交互事件
    #玩家成功激活磁石
        execute as @e[tag=lgp.tp_lodestone.root] if score @s lgp.tp_lodestone.activatedSuccess matches 1 run function lgp:blocks/tp_lodestone/event/activated
    
    #玩家站在磁石上等待传送
        execute at @e[tag=lgp.tp_lodestone.root] positioned ~ ~ ~ as @p[distance=..0.5] at @s run function lgp:blocks/tp_lodestone/event/for_player/waiting

    #磁石转换传送目的地
        execute as @e[tag=lgp.tp_lodestone.root] at @s if score @s lgp.tp_lodestone.rightClick matches 1.. run function lgp:blocks/tp_lodestone/event/change_destination

    #玩家修改当前地点名称
        execute as @e[tag=lgp.tp_lodestone.currentPlace] at @s if score @s lgp.tp_lodestone.leftClick matches 1.. run function lgp:blocks/tp_lodestone/event/change_current_place_name

    #玩家改变自身传送的目的地
        execute as @a[tag=lgp.tp_lodestone.rightClick] at @s run function lgp:blocks/tp_lodestone/event/for_player/change_destination

