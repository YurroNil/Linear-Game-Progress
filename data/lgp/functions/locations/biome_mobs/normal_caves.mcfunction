#替换
    execute as @e[type=zombie,tag=!lgp.location.mobReplaced,predicate=!lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/dripstone_caves,scores={lgp.PosY=..45}] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton
    execute as @e[type=spider,tag=!lgp.location.mobReplaced,predicate=!lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/dripstone_caves,scores={lgp.PosY=..45}] at @s run function lgp:locations/biome_mobs/replaced_mobs/creeper
    execute as @e[type=witch,tag=!lgp.location.mobReplaced,predicate=!lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/dripstone_caves,scores={lgp.PosY=..45}] at @s run function lgp:locations/biome_mobs/replaced_mobs/skeleton_knight
    

tag @e[type=skeleton,tag=!lgp.location.mobReplaced,predicate=!lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/dripstone_caves,scores={lgp.PosY=..45}] add lgp.location.mobReplaced
tag @e[type=creeper,tag=!lgp.location.mobReplaced,predicate=!lgp:locations/in_biome/lush_caves,predicate=!lgp:locations/in_biome/dripstone_caves,scores={lgp.PosY=..45}] add lgp.location.mobReplaced
