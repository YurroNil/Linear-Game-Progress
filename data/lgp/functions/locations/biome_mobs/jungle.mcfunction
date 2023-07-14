execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/jungle,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/jungle,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/jungle,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper

tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/jungle,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/jungle,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced