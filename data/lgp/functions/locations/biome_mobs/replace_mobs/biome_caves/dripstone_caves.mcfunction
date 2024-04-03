#替换
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=bat,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] at @s run function lgp:locations/biome_mobs/replaced_mobs/silverfish

#buff
    effect give @e[type=silverfish,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves] minecraft:speed 1 2 true

tag @e[type=silverfish,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/dripstone_caves,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced