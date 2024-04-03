#初始化
    #无法掉落
    data merge entity @s {HandDropChances:[0.0f,100.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
    #获取当前位置
    execute store result score @s lgp.PosY run data get entity @s Pos[1] 1.0

#末影诅咒
execute if predicate lgp:world/curse/ender/all run function lgp:entities/mob_modify/_equipment/ender_curse/root

#以太诅咒
execute if predicate lgp:world/curse/ether/all run function lgp:entities/mob_modify/_equipment/ether_curse/root
