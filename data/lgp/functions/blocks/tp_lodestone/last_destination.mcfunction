#索引减少1
    scoreboard players remove @s lgp.tp_lodestone.index 1
#防止索引为负数，限制在0-15范围内（一共只有16个目的地）
    scoreboard player add @s lgp.tp_lodestone.index 16
    scoreboard players operation @s lgp.tp_lodstone %= #16 lgp.int

#按照索引搜素目的地列表，然后设置对应的文字和坐标
    function lgp:blocks/tp_lodestone/set_destination