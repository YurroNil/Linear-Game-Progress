#改变目的地位置信息
    execute as @e[tag=lgp.tp_lodestone.targetText] at @s run function lgp:blocks/tp_lodestone/obj/target_text/change_destination
    
#重置交互状态
    function lgp:blocks/tp_lodestone/obj/root/interaction/reset