playsound minecraft:ambient.soul_sand_valley.mood voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:dry_out
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了干旱诅咒.因为世界进度未满足要求","color":"gold"}

advancement revoke @s only lgp:_functions/in_biome/arid