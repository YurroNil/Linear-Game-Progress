tellraw @s {"text":"","extra":[{"text":"\n\n"},{"text":"以下是分别是雷达已探测到的"},{"text":"主世界地表(海洋)","color":"blue"},{"text":"重要"},{"text":"生物群系","color":"#00FA9A","bold": true},{"text":"最近一个生物的信息."}]}
scoreboard players set #noResults lgp.radar.rightClick 1
#冷水海洋
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_biome/cold_ocean,distance=..500] at @s run function lgp:items/radar/get_info/biomes/cold_ocean

#冻洋
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_biome/frozen_ocean,distance=..500] at @s run function lgp:items/radar/get_info/biomes/frozen_ocean

#温水海洋
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_biome/lukewarm_ocean,distance=..500] at @s run function lgp:items/radar/get_info/biomes/lukewarm_ocean

#暖水海洋
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_biome/warm_ocean,distance=..500] at @s run function lgp:items/radar/get_info/biomes/warm_ocean

#蘑菇岛
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_biome/mushroom_fields,distance=..500] at @s run function lgp:items/radar/get_info/biomes/mushroom_fields
