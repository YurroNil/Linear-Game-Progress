#计时器持续工作
    scoreboard players add @s lgp.tp_lodestone.time 1

#如果时间大于等于5秒=5*20=100刻,触发传送
    execute if score @s lgp.tp_lodestone.time matches 100.. run function lgp:blocks/tp_lodestone/even/tp_player
    