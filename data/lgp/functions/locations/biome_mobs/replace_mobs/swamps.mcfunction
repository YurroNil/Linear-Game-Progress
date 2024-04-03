#全部丛林生物群系，全部怪物替换成史莱姆和女巫
execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/swamps_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/slime
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/swamps_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/slime
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/swamps_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/slime
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/swamps_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/witch

#女巫和苦力怕自己不替换
tag @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/swamp,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced
tag @e[type=slime,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/swamp,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced
