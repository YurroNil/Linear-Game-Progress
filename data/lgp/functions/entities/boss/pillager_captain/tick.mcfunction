#设置BOSS
    execute if score pillagerCaptain.allowSummon lgp.world matches 1 if entity @a[scores={lgp.worldProcess=1..}] unless score inRaiders lgp.raiders matches 1 at @a unless entity @e[predicate=lgp:is_pillager_captain,tag=lgp.pillagerCaptain] as @e[tag=!lgp.pillagerCaptain,limit=1,predicate=lgp:is_pillager_captain] run function lgp:entities/boss/pillager_captain/model

#bossbar
    execute unless entity @e[tag=lgp.pillagerCaptain] run bossbar remove pillager_captain
    execute if entity @e[tag=lgp.pillagerCaptain] run bossbar add pillager_captain "前哨站队长"
    bossbar set pillager_captain color red
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.pillagerCaptain] run bossbar set pillager_captain players @a[distance=..50]
    bossbar set pillager_captain style notched_6
    bossbar set pillager_captain max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.pillagerCaptain] store result bossbar pillager_captain value run data get entity @s Health 1.0

#技能
    #计分板
    execute if entity @e[tag=lgp.pillagerCaptain] run scoreboard objectives add lgp.pillagerCaptain dummy
    execute unless entity @e[tag=lgp.pillagerCaptain] run scoreboard objectives remove lgp.pillagerCaptain

    #填充药水箭
        execute as @e[tag=lgp.pillagerCaptain] store result score @s lgp.pillagerCaptain run data get entity @s HandItems[1].Count
        execute as @e[tag=lgp.pillagerCaptain] unless score @s lgp.pillagerCaptain matches 2.. run data modify entity @s HandItems[1].Count set value 64

#设置掠夺者队长的生成CD为10天一周期
    execute if score pillagerCaptain.inCD lgp.world matches 1 if score timeTick lgp.world matches 1 run scoreboard players add #pillagerCaptain.inCD.dayPeriod lgp.world 1
    execute if score #pillagerCaptain.inCD.dayPeriod lgp.world matches 10.. run function lgp:entities/boss/pillager_captain/cd_reset
