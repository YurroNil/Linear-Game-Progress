#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#放置
    execute as @e[tag=lgp.tp_lodestone.rootInit] at @s run function lgp:blocks/tp_lodestone/place

#判断是否被激活
    execute as @e[tag=lgp.tp_lodestone.root] run function lgp:blocks/tp_lodestone/activate_judgment

#移除
    execute as @e[tag=lgp.tp_lodestone.root] at @s unless block ~ ~-1 ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/uninstall

    execute at @e[tag=lgp.tp_lodestone.root] run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 force @a

#玩家是否站在磁石上
    execute at @e[tag=lgp.tp_lodestone.root] positioned ~ ~ ~ as @p[distance=..0.5] at @s run function lgp:blocks/tp_lodestone/timer/tick

