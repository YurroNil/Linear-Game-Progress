execute unless score phantomSummon.spawnPeriod lgp.world matches 3.. run scoreboard players set phantomSummon.spawnPeriod lgp.world 3
function lgp:entities/boss/phantom/summon/model
scoreboard players add phantomSummon.consecutiveTimes lgp.world 1
advancement grant @a only lgp:guide_part1/meet_phantom
