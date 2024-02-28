playsound minecraft:ambient.basalt_deltas.mood voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:freeze
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了霜冻诅咒.因为世界进度未满足要求","color":"#1E90FF"}

advancement revoke @s only lgp:locations/in_biome/snowy
