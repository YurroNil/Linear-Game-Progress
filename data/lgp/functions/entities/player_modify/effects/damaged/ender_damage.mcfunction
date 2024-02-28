playsound minecraft:ambient.warped_forest.mood voice @s[tag=!player.operTags] ~ ~ ~ 1000 1 1
damage @s[tag=!player.operTags] 5.0 minecraft:out_of_world
title @s[tag=!player.operTags] title ""
title @s[tag=!player.operTags] subtitle {"text":"你受到了虚空诅咒.因为世界进度未满足要求","color":"light_purple"}
advancement revoke @s only lgp:locations/in_dimension/the_end
