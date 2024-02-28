playsound minecraft:ambient.warped_forest.mood voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:magic
effect give @s[tag=!player.operTags] minecraft:nausea 12 0 true
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了剧毒诅咒.因为世界进度未满足要求","color":"dark_green"}

advancement revoke @s only lgp:locations/in_biome/swamp
advancement revoke @s only lgp:locations/in_biome/jungle
