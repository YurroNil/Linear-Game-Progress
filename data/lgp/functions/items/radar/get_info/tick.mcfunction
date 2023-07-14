#生物群系
    execute unless score @s lgp.radarMode matches 2 run function lgp:items/radar/get_info/biome_main

#结构
    execute if score @s lgp.radarMode matches 2 run function lgp:items/radar/get_info/structure_main

execute if score #noResults lgp.radar.rightClick matches 1 run tellraw @s {"text":"","extra":[{"text":"无探测结果."}]}
tellraw @s {"text":"","extra":[{"text":"\n"}]}
playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 1 1.5 1
scoreboard players reset #noResults lgp.radar.rightClick
advancement grant @s only lgp:_functions/items/radar_cd
tag @s remove lgp.radar.rightClick