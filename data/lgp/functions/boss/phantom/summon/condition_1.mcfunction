execute if score timeTick lgp.world matches 13010 if predicate lgp:chance/1d3 run scoreboard players set phantomSummon.spawnChance lgp.world 1

execute if score phantomSummon.spawnChance lgp.world matches 1 at @r[limit=1,tag=!player.operTags,scores={lgp.PosY=45..}] positioned ~ ~20 ~ unless entity @e[tag=lgp.phantom] unless score phantomSummon.consecutiveTimes lgp.world matches 3.. summon minecraft:phantom run function lgp:boss/phantom/summon/model_init
execute if score phantomSummon.spawnChance lgp.world matches 1 run scoreboard players set phantomSummon.spawnChance lgp.world 0
