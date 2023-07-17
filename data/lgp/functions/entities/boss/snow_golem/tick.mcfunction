#雪球造成伤害
    #对玩家
    execute as @e[type=minecraft:snowball] at @s on origin if entity @s[type=minecraft:snow_golem,tag=lgp.snowGolem] run function lgp:entities/boss/snow_golem/damage

#生命上限
    execute as @e[type=minecraft:snow_golem,tag=!lgp.snowGolem,tag=lgp.BOSS] run function lgp:entities/boss/snow_golem/model
    tag @e[type=minecraft:snow_golem,tag=!lgp.snowGolem,tag=lgp.BOSS] add lgp.snowGolem
    #生命恢复
    effect give @e[type=minecraft:snow_golem,predicate=!lgp:effect/regeneration] minecraft:regeneration infinite 0 true
 #无法在雪地外的环境下生存
    execute as @e[type=snow_golem,tag=!lgp.snowGolem,predicate=!lgp:in_biome/tech/snowy_all] run damage @s 1.0 minecraft:in_fire at ~ ~ ~

#bossbar
    execute unless entity @e[tag=lgp.snowGolem] run bossbar remove lgp_snow_golem
    execute if entity @e[tag=lgp.snowGolem] run bossbar add lgp_snow_golem "雪傀儡"
    bossbar set lgp_snow_golem color white
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.snowGolem] run bossbar set lgp_snow_golem players @a[distance=..40]
    bossbar set lgp_snow_golem style notched_6
    bossbar set lgp_snow_golem max 200
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.snowGolem] store result bossbar lgp_snow_golem value run data get entity @s Health 1.0

#技能
    #放置细雪方块和冰
    execute at @e[type=minecraft:snow_golem,tag=lgp.snowGolem] run fill ~10 ~ ~10 ~-10 ~-1 ~-10 powder_snow replace #lgp:snow_golem_fill_powder_snow
    execute at @e[type=minecraft:snow_golem,tag=lgp.snowGolem] run fill ~10 ~ ~10 ~-10 ~-1 ~-10 ice replace minecraft:water
    #防卡细雪方块
    execute as @e[type=minecraft:snow_golem,tag=lgp.snowGolem] at @s if block ~ ~ ~ powder_snow run tp @s ~ ~1 ~