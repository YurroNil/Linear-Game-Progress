execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/stray
execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/stray_knight
execute as @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/stray
execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] at @s run function lgp:locations/biome_mobs/replaced_mobs/stray_knight

tag @e[type=stray,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=lgp:locations/in_biome/tech/snowy_all,predicate=!lgp:locations/in_biome/tech/all_caves_including_posy] add lgp.location.mobReplaced