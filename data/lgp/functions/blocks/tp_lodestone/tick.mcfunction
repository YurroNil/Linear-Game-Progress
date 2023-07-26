#declare tag lgp.tp_lodestone.init
#declare tag lgp.tp_lodestone.leftClick
#declare tag lgp.tp_lodestone.rightClick
#declare score_holder #lgp.tp_lodestone.current_place_index
#declare score_holder #lgp.tp_lodestone.max_count

#相关实体对象
    execute as @e[tag=lgp.tp_lodestone.init] at @s run function lgp:blocks/tp_lodestone/obj/init/try
    execute as @e[tag=lgp.tp_lodestone.root] at @s run function lgp:blocks/tp_lodestone/obj/root
    #execute as @e[tag=lgp.tp_lodestone.currentText] at @s run function lgp:blocks/tp_lodestone/obj/current_text
    #execute as @e[tag=lgp.tp_lodestone.targetText] at @s run function lgp:blocks/tp_lodestone/obj/target_text


