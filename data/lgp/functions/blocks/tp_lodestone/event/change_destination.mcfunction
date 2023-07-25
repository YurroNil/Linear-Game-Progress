#对root，增加index分数，并限制在#max_destination_count的范围内
    scoreboard players add @s lgp.tp_lodestone.index 1
    scoreboard players operation @s lgp.tp_lodestone.index %= #lgp.tp_lodestone.max_count lgp.int

#根据index分数，将存储的目的地列表中的nbt信息赋给最近的text_display实体
    execute as @e[tag=lgp.tp_lodestone.text,sort=nearest,limit=1,distance=..0.1] at @s run function lgp:blocks/tp_lodestone/event/set_destination_text

#重置时间戳状态
    data modify entity @s interaction.timestamp set value 0

