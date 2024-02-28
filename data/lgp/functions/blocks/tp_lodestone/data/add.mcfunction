#添加一个传送磁石对象
data modify storage lgp:blocks/tp_lodestone destination_list prepend value {}
data modify storage lgp:blocks/tp_lodestone destination_list[0].pos set from entity @s Pos
execute store result storage lgp:blocks/tp_lodestone destination_list[0].index int 1 run scoreboard players get @s lgp.tp_lodestone.index
