execute unless entity @e[tag=lgp.slimeKing.type] summon minecraft:slime run function lgp:entities/boss/slimeking/model
summon marker ~ ~ ~ {Tags:["lgp.slimeKing.tickTimer"]}

particle minecraft:explosion ~ ~ ~ 5 5 5 1 1000 force @a
playsound minecraft:block.end_gateway.spawn voice @a ~ ~ ~ 1000 0 1

scoreboard objectives add lgp.slimeKing dummy
scoreboard players set slimeKing.allowSummon lgp.world 0
scoreboard players set deathDetector lgp.slimeKing 1
scoreboard players set slimeKing.inCD lgp.world 1
