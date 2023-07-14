execute unless score @s lgp.radar.rightClick matches -2147483648..2147483647 run function lgp:items/radar/get_info/search/0
scoreboard players operation getInfo.tempScore lgp.radar.rightClick = @s lgp.radar.rightClick
scoreboard players reset @s lgp.radar.rightClick
effect give @s glowing 5 0 true
