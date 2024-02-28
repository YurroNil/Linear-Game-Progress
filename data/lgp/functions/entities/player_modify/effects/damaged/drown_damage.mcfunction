playsound minecraft:ambient.underwater.loop.additions.ultra_rare voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:drown
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你无法在此生物群系潜水.因为世界进度未满足要求","color":"#1E90FF"}

advancement revoke @s only lgp:locations/in_structure/ocean_ruins
advancement revoke @s only lgp:locations/in_structure/monument
advancement revoke @s only lgp:locations/in_biome/ocean
