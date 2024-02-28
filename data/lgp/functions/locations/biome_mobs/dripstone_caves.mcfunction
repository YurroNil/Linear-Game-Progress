#替换
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=bat,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish

#buff
    effect give @e[type=silverfish,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] minecraft:speed 1 2 true

tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=silverfish,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced