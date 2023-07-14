execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/dark_forest,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/dark_forest,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/spider
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/dark_forest,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/witch

tag @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/dark_forest,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/dark_forest,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
