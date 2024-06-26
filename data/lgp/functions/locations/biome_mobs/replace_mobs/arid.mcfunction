#替换
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/husk
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
    execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/husk
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper

#buff
    effect give @e[type=husk,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] minecraft:speed 1 1 true
    effect give @e[type=husk,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] minecraft:strength 1 1 true
    effect give @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] minecraft:speed 1 1 true

tag @e[type=husk,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/arid,predicate=!lgp:locations/in_biome/tech/caves/is_cave_areas] add lgp.location.mobReplaced