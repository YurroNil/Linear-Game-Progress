#索引增加1
    scoreboard players add @s lgp.tp_lodestone.index 1
#限制索引在0-15范围内（一共只有16个目的地）
    scoreboard players operation @s lgp.tp_lodstone.index %= #16 lgp.int

#按照索引搜素目的地列表，然后设置对应的文字
    function lgp:blocks/tp_lodestone/select_destination/set
