playsound minecraft:ambient.basalt_deltas.additions voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:wither
effect give @s[tag=!player.operTags] blindness 2 0 true
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了黑暗诅咒.因为世界进度未满足要求","color":"dark_red"}
advancement revoke @s only lgp:locations/in_structure/mansion
advancement revoke @s only lgp:locations/in_biome/dark_forest
advancement revoke @s only lgp:locations/in_biome/caves
