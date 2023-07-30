#改变目的地位置信息
    execute as @e[tag=lgp.tp_lodestone.targetText,limit=1,distance=..1,sort=nearest] at @s run function lgp:blocks/tp_lodestone/obj/target_text/change_destination

#对右键的玩家
    execute on target run function lgp:blocks/tp_lodestone/obj/player/get_index
    
#重置交互状态
    function lgp:blocks/tp_lodestone/obj/root/interaction/reset