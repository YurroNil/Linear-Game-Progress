#是否在更深的洞穴
    execute as @a[scores={lgp.PosY=..20},tag=!player.operTags] at @s unless biome ~ ~ ~ #lgp:all_caves run function lgp:entities/player_modify/effects/damaged/dark_damage
    execute as @a[scores={lgp.PosY=..30},tag=!player.operTags] at @s unless biome ~ ~ ~ #lgp:all_caves run function lgp:entities/player_modify/effects/damaged/dark_warning
