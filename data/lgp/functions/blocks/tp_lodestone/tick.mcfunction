#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#放置
    execute as @e[tag=lgp.tp_lodestone.rootInit] at @s run function lgp:blocks/tp_lodestone/place

#判断是否被激活
    execute as @e[tag=lgp.tp_lodestone.root] run function lgp:blocks/tp_lodestone/activate_judgment

#移除
    execute as @e[tag=lgp.tp_lodestone.root] at @s unless block ~ ~ ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/uninstall

#交互
    execute as @e[tag=lgp.lodestone] at @s run function lgp:blocks/tp_lodestone/select_destination/tick

#计时器
    execute as @e[tag=lgp.lodestone] at @s run function lgp:blocks/tp_lodestone/timer/tick
