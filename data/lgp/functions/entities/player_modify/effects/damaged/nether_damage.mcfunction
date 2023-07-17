playsound minecraft:ambient.crimson_forest.mood voice @s[tag=!player.operTags] ~ ~ ~ 1000 2 1
damage @s[tag=!player.operTags] 5.0 minecraft:in_fire
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了下界诅咒.因为世界进度未满足要求","color":"red"}
advancement revoke @s only lgp:_functions/in_dimension/the_nether
