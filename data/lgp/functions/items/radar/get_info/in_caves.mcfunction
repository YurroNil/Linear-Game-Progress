tellraw @s {"text":"","extra":[{"text":"\n\n"},{"text":"以下是分别是雷达已探测到的"},{"text":"主世界地下(洞穴)","color":"red"},{"text":"重要"},{"text":"生物群系","color":"#00FA9A","bold": true},{"text":"最近一个生物的信息."}]}
scoreboard players set #noResults lgp.radar.rightClick 1
#溶洞
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/dripstone_caves,distance=..500] at @s run function lgp:items/radar/get_info/biomes/dripstone_caves

#繁茂洞穴
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/lush_caves,distance=..500] at @s run function lgp:items/radar/get_info/biomes/lush_caves

#深暗之域
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:in_biome/deep_dark,distance=..500] at @s run function lgp:items/radar/get_info/biomes/deep_dark

