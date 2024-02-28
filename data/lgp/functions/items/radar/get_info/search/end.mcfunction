scoreboard players operation getInfo.tempScore lgp.radar.rightClick = @s lgp.radar.rightClick
scoreboard players reset @s lgp.radar.rightClick
scoreboard objectives remove lgp.radar.getInfo.rec
data remove storage lgp:items/radar getInfo_search
effect give @s glowing 5 0 true