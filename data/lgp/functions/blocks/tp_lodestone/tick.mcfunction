#尝试初始化对象
    execute as @e[tag=lgp.tp_lodestone.init] at @s run function lgp:blocks/tp_lodestone/obj/init/try

#根对象进入循环
    execute as @e[tag=lgp.tp_lodestone.root] at @s run function lgp:blocks/tp_lodestone/obj/root
    #execute as @e[tag=lgp.tp_lodestone.currentText] at @s run function lgp:blocks/tp_lodestone/obj/current_text
    #execute as @e[tag=lgp.tp_lodestone.targetText] at @s run function lgp:blocks/tp_lodestone/obj/target_text


