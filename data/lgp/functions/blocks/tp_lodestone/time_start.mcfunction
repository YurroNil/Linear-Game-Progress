#对玩家计时器
    scoreboard players add @s lgp.tp_lodestone.time 1

#如果时间大于等于5秒=5*20=100刻,触发传送
    execute if score @s lgp.tp_lodestone.time matches 1.. run function lgp:blocks/tp_lodestone/tp_player