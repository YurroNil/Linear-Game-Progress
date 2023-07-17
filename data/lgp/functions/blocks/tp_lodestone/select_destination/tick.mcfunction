#将实体的交互nbt转化为对应的计分板分数
    execute store result score @s lgp.tp_lodestone.rightClick run data get entity @s interaction.timestamp
    execute store result score @s lgp.tp_lodestone.leftClick run data get entity @s attack.timestamp

#如果右键了交互实体，转换为下一个目的地
    execute if score @s lgp.tp_lodestone.rightClick matches 1.. run function lgp:blocks/tp_lodestone/select_destination/select_next
#如果左键，转换为上一个目的地
    execute if score @s lgp.tp_lodestone.leftClick matches 1.. run function lgp:blocks/tp_lodestone/select_destination/select_last
