#远古守卫者BOSS生成
    #添加tag
    #设置
    execute at @e[tag=player.group,tag=!player.operTags] as @e[type=elder_guardian,predicate=lgp:in_structure/monument,tag=!lgp.elderGuardian_Inited,distance=..100,limit=1] at @s run function lgp:entities/boss/elder_guardian/add_tags/root

#bossbar
    function lgp:entities/boss/elder_guardian/set_bossbar

#死亡检测
    execute store result score elderGuardian.Count lgp.elderGuardian if entity @e[tag=lgp.elderGuardian]
    execute if score deathDetector lgp.elderGuardian matches 1 if score elderGuardian.Count lgp.elderGuardian matches 0 as @e[tag=lgp.elderGuardian.tickTimer] at @s unless entity @e[tag=lgp.elderGuardian] run function lgp:entities/boss/elder_guardian/bekilled

#技能
    #头指令
    execute if entity @e[tag=lgp.elderGuardian] run scoreboard objectives add lgp.elderGuardian dummy
    execute unless entity @e[tag=lgp.elderGuardian] run scoreboard objectives remove lgp.elderGuardian

    #远古守卫者1技能：生成小怪
    execute as @e[tag=lgp.drowned.summoned] store result score drownedSummoned.Count lgp.elderGuardian if entity @s
    execute unless score drownedSummoned.Count lgp.elderGuardian matches 20.. at @e[tag=player.group,tag=!player.operTags] run scoreboard players add @e[tag=lgp.elderGuardian.bossType1,distance=..10] lgp.elderGuardian 1
    execute as @e[tag=lgp.elderGuardian.bossType1,scores={lgp.elderGuardian=600..}] at @s run function lgp:entities/boss/elder_guardian/summon_drowned

    #远古守卫者2技能：隐身
    execute as @e[tag=lgp.elderGuardian.bossType2] store result score @s lgp.elderGuardian run data get entity @s Health 1.0
    execute as @e[tag=lgp.elderGuardian.bossType2,tag=!lgp.elderGuardian.bossType2.invisible,scores={lgp.elderGuardian=..75}] at @s run function lgp:entities/boss/elder_guardian/invisible


    #远古守卫者3技能：发射穿墙激光
        #头命令
        execute if entity @e[tag=lgp.elderGuardian.bossType3] run scoreboard objectives add lgp.elderGuardian.bossType3 dummy
        execute unless entity @e[tag=lgp.elderGuardian.bossType3] run scoreboard objectives remove lgp.elderGuardian.bossType3
        scoreboard players add @e[tag=lgp.elderGuardian.bossType3,scores={lgp.elderGuardian=400..}] lgp.elderGuardian 1
        execute at @e[tag=player.group,tag=!player.operTags] as @e[tag=lgp.elderGuardian.bossType3,distance=..20] unless score @s lgp.elderGuardian matches 400.. run scoreboard players add @s lgp.elderGuardian 1

        #激光发射预警
        execute as @e[tag=lgp.elderGuardian.bossType3,scores={lgp.elderGuardian=410}] at @s run function lgp:entities/boss/elder_guardian/laser/pre_init
        execute as @e[tag=lgp.elderGuardian.bossType3,scores={lgp.elderGuardian=410..497}] at @s run function lgp:entities/boss/elder_guardian/laser/pre_loop

        #发射激光
        execute as @e[tag=lgp.elderGuardian.bossType3,scores={lgp.elderGuardian=511..520}] at @s positioned ^ ^1 ^ unless entity @e[tag=player.group,tag=!player.operTags,distance=..1] run function lgp:entities/boss/elder_guardian/laser/shooting
        execute at @e[tag=lgp.elderGuardian.marker] run function lgp:entities/boss/elder_guardian/laser/damage
        execute as @e[tag=lgp.elderGuardian.bossType3,scores={lgp.elderGuardian=521..}] run function lgp:entities/boss/elder_guardian/laser/reset

