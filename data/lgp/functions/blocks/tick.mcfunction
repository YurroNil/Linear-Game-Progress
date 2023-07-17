#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#初始化
    execute as @e[tag=lgp.tp_lodestone.rootInit] at @s run function lgp:blocks/tp_lodestone/init

#判断是否被激活
    execute as @e[tag=lgp.tp_lodestone.root] run function lgp:blocks/tp_lodestone/activate_judgment

#按键检测




#移除
    execute as @e[tag=lgp.tp_lodestone.root] at @s unless block ~ ~ ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/uninstall
