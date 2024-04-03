#全部丛林生物群系，全部怪物替换成苦力怕
execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/jungle,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/jungle,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/jungle,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/jungle,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper

#苦力怕自己不替换
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/jungle,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced