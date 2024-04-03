#深层洞穴(y<=0的区域)中，全部怪物替换成骷髅和苦力怕
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/deep_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/deep_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton

    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/deep_layer_andnot_allcaves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton_knight

#骷髅和苦力怕自己不替换
tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/deep_layer_andnot_allcaves] add lgp.location.mobReplaced

tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/caves/deep_layer_andnot_allcaves] add lgp.location.mobReplaced
