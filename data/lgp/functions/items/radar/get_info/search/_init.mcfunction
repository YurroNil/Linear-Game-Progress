#递归初始化
    scoreboard objectives add lgp.radar.getInfo.rec dummy
    
    data modify storage lgp:items/radar getInfo_search append value {"distance_command1":"execute unless score @s lgp.radar.rightClick matches -2147483648..2147483647 if entity @p[tag=lgp.radar.rightClick,distance=..","distance_command2":"] run scoreboard players set @s lgp.radar.rightClick ","distance_command3":"execute unless score @s lgp.radar.rightClick matches -2147483648..2147483647 run function lgp:items/radar/get_info/search/","distance_var":0}

    execute if score @s lgp.radar.rightClick matches -2147483648..2147483647 if entity @p[tag=lgp.radar.rightClick,distance=..1] run scoreboard players set @s lgp.radar.rightClick 0