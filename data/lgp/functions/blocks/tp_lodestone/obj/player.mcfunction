#本函数从lgp:player_tick函数载入
#合成
    execute as @s[nbt={recipeBook:{recipes:["lgp:crafted/tp_lodestone"]}}] run function lgp:blocks/tp_lodestone/item/crafted

#对root右键
    execute as @s[tag=lgp.tp_lodestone.rightClick] at @s run function lgp:blocks/tp_lodestone/obj/player/right_click_root

#对root左键
    execute as @s[tag=lgp.tp_lodestone.leftClick] at @s run function lgp:blocks/tp_lodestone/obj/player/left_click_root

