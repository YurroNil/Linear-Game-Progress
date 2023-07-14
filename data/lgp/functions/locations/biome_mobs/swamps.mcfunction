execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/tech/swamps_all,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/witch
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/tech/swamps_all,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/witch
execute as @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/tech/swamps_all,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/slime
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/tech/swamps_all,predicate=!lgp:in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/slime

tag @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/swamp,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=slime,tag=!lgp.location.mobReplaced,predicate=lgp:in_biome/swamp,predicate=!lgp:in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
