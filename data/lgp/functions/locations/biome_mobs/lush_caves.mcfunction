#替换
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/cave_spider
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/cave_spider
    execute as @e[type=bat,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/cave_spider
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/cave_spider
 
#buff
    effect give @e[type=cave_spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves] minecraft:speed 1 0 true

tag @e[type=cave_spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced