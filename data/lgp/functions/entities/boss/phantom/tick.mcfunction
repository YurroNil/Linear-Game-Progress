#设置生成BOSS
    #phantomSummon.spawnPeriod设置.三进制
    execute unless score phantomSummon.unspawnPeriod lgp.world matches 1.. unless score phantomSummon.consecutiveTimes lgp.world matches 1.. unless score phantomSummon.spawnPeriod lgp.world matches 3.. if score timeTick lgp.world matches 1 run scoreboard players add phantomSummon.spawnPeriod lgp.world 1
    execute unless score timeTick lgp.world matches 1..12999 run function lgp:entities/boss/phantom/summon/tick
#条件2：杀死恐怖之翼或条件1满足完成三晚刷新后，会进入20天恐怖之翼的不刷新的周期。20天结束后回到条件1
    execute if score timeTick lgp.world matches 1 if score phantomSummon.unspawnPeriod lgp.world matches 1.. run scoreboard players add phantomSummon.unspawnPeriod lgp.world 1
    execute if score timeTick lgp.world matches 1 if score phantomSummon.unspawnPeriod lgp.world matches 21.. run function lgp:entities/boss/phantom/summon/load
    
#血量控制
    #一阶段
    tag @e[tag=lgp.phantom,tag=!lgp.phantom.phase3,tag=!lgp.phantom.phase2,scores={lgp.phantom.health=130..}] add lgp.phantom.phase1
    #二阶段
    tag @e[tag=lgp.phantom,tag=!lgp.phantom.phase3,scores={lgp.phantom.health=101..150}] add lgp.phantom.phase2
    tag @e[tag=lgp.phantom.phase2] remove lgp.phantom.phase1
    #三阶段
    tag @e[tag=lgp.phantom,scores={lgp.phantom.health=51..100}] add lgp.phantom.phase3
    tag @e[tag=lgp.phantom.phase3] remove lgp.phantom.phase2
    tag @e[tag=lgp.phantom.phase3] remove lgp.phantom.phase1

    #四阶段
    tag @e[tag=lgp.phantom,scores={lgp.phantom.health=..50}] add lgp.phantom.phase4

#bossbar
    execute unless entity @e[tag=lgp.phantom] run bossbar remove phantom
    execute if entity @e[tag=lgp.phantom] run bossbar add phantom "恐怖之翼"
    #一阶段蓝色
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase1] run bossbar set phantom style progress
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase1] run bossbar set phantom color blue
    #二阶段紫色
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase2] run bossbar set phantom name "恐怖之翼(四大护法之一)"
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase2] run bossbar set phantom style notched_6
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase2] run bossbar set phantom color purple
    #三阶段红色
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase3] run bossbar set phantom name "恐怖之翼(四大护法之一)"
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase3] run bossbar set phantom style notched_6
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom,tag=lgp.phantom.phase3] run bossbar set phantom color red

    execute at @a at @e[sort=nearest,limit=1,tag=lgp.phantom] run bossbar set phantom players @a[distance=..100]
    bossbar set phantom max 200
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.phantom] store result bossbar phantom value run data get entity @s Health 1.0

#技能
    #buff
    execute if score timeTick lgp.world matches 13000..23500 run effect give @e[tag=lgp.phantom] fire_resistance 2 0 true

    #计分板
    execute if entity @e[tag=lgp.phantom] run function lgp:entities/boss/phantom/install
    execute unless entity @e[tag=lgp.phantom] run function lgp:entities/boss/phantom/uninstall
    execute as @e[tag=lgp.phantom] store result score @s lgp.phantom.health run data get entity @s Health 1.0

    #离玩家太远传送
        execute unless score timeTick lgp.world matches 1..12999 as @e[tag=lgp.phantom,tag=!lgp.phantom.sprinting] at @s unless entity @a[scores={lgp.PosY=50..},tag=!player.operTags,distance=..50] at @p[scores={lgp.PosY=50..},tag=!player.operTags] run function lgp:entities/boss/phantom/tp
        #卡墙
        execute as @e[tag=lgp.phantom,tag=!lgp.phantom.sprinting] at @s if block ~ ~ ~ #uin:tech/solid_full run tp @s @p[scores={lgp.PosY=50..},tag=!player.operTags]

        #白天自动"消失"
        execute if score timeTick lgp.world matches 1..12999 as @e[tag=lgp.phantom,tag=!lgp.phantom.sprinting] at @s run function lgp:entities/boss/phantom/leave

    #冲刺技能
    tag @e[tag=lgp.phantom.phase2] add lgp.phantom.canSprinting
    tag @e[tag=lgp.phantom.phase3] add lgp.phantom.canSprinting
    execute as @e[tag=lgp.phantom.canSprinting] at @s if entity @e[tag=player.group,scores={lgp.PosY=50..},tag=!player.operTags,distance=..50] unless score @s lgp.phantom matches 321.. run scoreboard players add @s lgp.phantom 1

    scoreboard players add @e[tag=lgp.phantom,scores={lgp.phantom=321..}] lgp.phantom 1

    execute as @e[tag=lgp.phantom] at @s run function lgp:entities/boss/phantom/sprint/loop_judge

#二阶段强制近战
    #取消无敌
    execute unless score timeTick lgp.world matches 1..12999 as @e[tag=lgp.phantom,tag=lgp.phantom.canSprinting,tag=!lgp.phantom.sprinting] at @s if entity @e[tag=player.group,tag=!player.operTags,sort=nearest,limit=1,distance=..4] run data merge entity @s {Invulnerable:0b,Glowing:1b}
    #无敌
    execute unless score timeTick lgp.world matches 1..12999 as @e[tag=lgp.phantom,tag=lgp.phantom.canSprinting,tag=!lgp.phantom.sprinting] at @s unless entity @e[tag=player.group,tag=!player.operTags,sort=nearest,limit=1,distance=..4] run data merge entity @s {Invulnerable:1b,Glowing:0b}

#三阶段生怪
    execute as @e[tag=lgp.phantom.phase3] at @s if entity @e[tag=player.group,scores={lgp.PosY=50..},tag=!player.operTags,distance=..50] run scoreboard players add @s lgp.phantom.summonSkill 1
    execute as @e[tag=lgp.phantom,scores={lgp.phantom.summonSkill=467..}] at @s run function lgp:entities/boss/phantom/summon_submobs
