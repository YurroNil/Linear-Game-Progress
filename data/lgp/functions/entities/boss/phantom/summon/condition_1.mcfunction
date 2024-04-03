execute if score timeTick lgp.world matches 13010 if predicate lgp:chance/1d3 run scoreboard players set phantomSummon.spawnChance lgp.world 1

execute if score phantomSummon.spawnChance lgp.world matches 1 at @r[limit=1,tag=!player.operTags,predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer] positioned ~ ~20 ~ unless entity @e[tag=lgp.phantom] unless score phantomSummon.consecutiveTimes lgp.world matches 3.. summon minecraft:phantom run function lgp:entities/boss/phantom/summon/model_init
execute if score phantomSummon.spawnChance lgp.world matches 1 run scoreboard players set phantomSummon.spawnChance lgp.world 0
