#中层洞穴(40>y>0的区域)中，全部怪物替换成骷髅
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/middle_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/middle_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/middle_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/middle_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton_knight

#骷髅自己不替换
tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/middle_layer_andnot_allcaves] add lgp.location.mobReplaced

