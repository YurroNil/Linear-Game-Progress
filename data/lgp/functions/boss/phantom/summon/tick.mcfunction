
#如果在条件1未满足生成条件时突然出现幻翼，那么直接进入条件1的生成状态
    execute unless score phantomSummon.unspawnPeriod lgp.world matches 1.. unless entity @e[type=minecraft:phantom,tag=lgp.phantom] as @e[type=minecraft:phantom,tag=!lgp.phantom,limit=1] if entity @a[scores={lgp.worldProcess=0..}] run function lgp:boss/phantom/summon/model_init

#条件1：进入石/铜器时代后，三天内没刷恐怖之翼的话，就会连续三晚生成恐怖之翼
    execute unless score phantomSummon.unspawnPeriod lgp.world matches 1.. if score phantomSummon.spawnPeriod lgp.world matches 3.. run function lgp:boss/phantom/summon/condition_1
    execute unless score phantomSummon.unspawnPeriod lgp.world matches 1.. if score phantomSummon.consecutiveTimes lgp.world matches 3.. run function lgp:boss/phantom/summon/condition1_reset
    