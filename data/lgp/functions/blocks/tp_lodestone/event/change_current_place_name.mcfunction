
#重置玩家点击状态
    tag @p[tag=lgp.tp_lodestone.leftClick] remove lgp.tp_lodestone.leftClick
    data modify entity @s attack.player set value [I;0,0,0,0]

#重置时间戳状态
    data modify entity @s attack.timestamp set value 0
