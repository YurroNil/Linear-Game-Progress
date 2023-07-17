#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#交互
    execute as @e[type=minecart:interaction,tag=lgp.lodestone] at @s run function lgp:blocks/tp_lodestone/interaction

