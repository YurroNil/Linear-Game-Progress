tellraw @s {"text":"","extra":[{"text":"\n\n"},{"text":"以下是分别是雷达已探测到的"},{"text":"主世界地表(陆地)","color":"green"},{"text":"重要"},{"text":"生物群系","color":"#00FA9A","bold": true},{"text":"最近一个生物的信息."}]}
scoreboard players set #noResults lgp.radar.rightClick 1
#针叶林
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/taiga,distance=..500] at @s run function lgp:items/radar/get_info/biomes/taiga

#丛林
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/jungle,distance=..500] at @s run function lgp:items/radar/get_info/biomes/jungle

#沼泽
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/swamp,distance=..500] at @s run function lgp:items/radar/get_info/biomes/swamp

#红树林沼泽
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/mangrove_swamp,distance=..500] at @s run function lgp:items/radar/get_info/biomes/mangrove_swamp

#雪原
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/snowy_plain,distance=..500] at @s run function lgp:items/radar/get_info/biomes/snowy_plain

#热带草原
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/savanna,distance=..500] at @s run function lgp:items/radar/get_info/biomes/savanna

#沙漠
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/desert,distance=..500] at @s run function lgp:items/radar/get_info/biomes/desert

#恶地
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/badlands,distance=..500] at @s run function lgp:items/radar/get_info/biomes/badlands

#黑森林
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/dark_forest,distance=..500] at @s run function lgp:items/radar/get_info/biomes/dark_forest

#寒带山地
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/tech/frigid_mountain,distance=..500] at @s run function lgp:items/radar/get_info/biomes/frigid_mountain

#风袭丘陵
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/hill,distance=..500] at @s run function lgp:items/radar/get_info/biomes/hill

#樱花林
#execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/plain,distance=..500] at @s run function lgp:items/radar/get_info/biomes/plain