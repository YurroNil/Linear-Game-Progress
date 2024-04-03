#平原生物群系，普通怪物替换成僵尸
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/plains_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/zombie
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/plains_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/zombie
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/plains_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/zombie

#精英怪物替换成僵尸骑士
execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/plains_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/zombie_knight

#僵尸自己不替换
tag @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/plains_all,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced
