#全部海洋生物群系，全部怪物替换成溺尸
execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/ocean_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/drowned
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/ocean_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/drowned
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/ocean_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/drowned
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/ocean_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/drowned

tag @e[type=drowned,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/ocean_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced