#全部森林生物群系，全部怪物替换成蜘蛛
execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/forests_not_snowy,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/forests_not_snowy,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/forests_not_snowy,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider
execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/forests_not_snowy,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider

#蜘蛛自己不替换
tag @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/forests_not_snowy,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced

