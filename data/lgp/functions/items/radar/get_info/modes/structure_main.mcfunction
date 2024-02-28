tellraw @s {"text":"","extra":[{"text":"\n\n"},{"text":"以下是分别是雷达已探测到的"},{"text":"主世界","color":"green"},{"text":"重要"},{"text":"结构","color":"#48D1CC","bold": true},{"text":"最近一个生物的信息."}]}
scoreboard players set #noResults lgp.radar.rightClick 1

#村庄
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/villages,distance=..500] at @s run function lgp:items/radar/get_info/structures/village

#丛林神庙
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/jungle_pyramid,distance=..500] at @s run function lgp:items/radar/get_info/structures/jungle_pyramid

#沙漠神殿
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/desert_pyramid,distance=..500] at @s run function lgp:items/radar/get_info/structures/desert_pyramid

#掠夺者前哨站
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/pillager_outpost,distance=..500] at @s run function lgp:items/radar/get_info/structures/pillager_outpost

#废弃矿井
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/mineshaft,distance=..500] at @s run function lgp:items/radar/get_info/structures/mineshaft

#沼泽小屋
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/swamp_hut,distance=..500] at @s run function lgp:items/radar/get_info/structures/swamp_hut

#海底废墟
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/ocean_ruin,distance=..500] at @s run function lgp:items/radar/get_info/structures/ocean_ruin

#古代城市
execute as @e[sort=nearest,limit=1,type=#uin:tech/mobs,predicate=lgp:locations/in_structure/ancient_city,distance=..500] at @s run function lgp:items/radar/get_info/structures/ancient_city
