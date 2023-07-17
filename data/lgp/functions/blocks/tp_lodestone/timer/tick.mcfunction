#交互
    execute as @e[tag=lgp.tp_lodestone.root] at @s run function lgp:blocks/tp_lodestone/select_destination/tick
say 1
#计时器
    #对玩家计时器
        scoreboard players add @s lgp.tp_lodestone.time 1

    #如果时间大于等于5秒=5*20=100刻,触发传送
        execute if score @s lgp.tp_lodestone.time matches 100.. run function lgp:blocks/tp_lodestone/timer/tp_player
    