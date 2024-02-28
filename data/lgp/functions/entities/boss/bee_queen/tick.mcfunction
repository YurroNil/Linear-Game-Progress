#是否在丛林遗迹
    execute as @e[tag=lgp.beeQueen.marker] at @s if predicate lgp:locations/in_biome/jungle run function lgp:entities/boss/bee_queen/model
    execute as @e[tag=lgp.beeQueen.marker] at @s unless predicate lgp:locations/in_biome/jungle run function lgp:entities/boss/bee_queen/summon_fail

    kill @e[tag=lgp.beeQueen.marker]

#初始化
    #计分板
    execute if entity @e[tag=lgp.beeQueen] run scoreboard objectives add lgp.beeQueen.uuid dummy
    execute unless entity @e[tag=lgp.beeQueen] run scoreboard objectives remove lgp.beeQueen.uuid
    execute if entity @e[tag=lgp.beeQueen] run scoreboard objectives add lgp.beeQueen.hasStung dummy
    execute unless entity @e[tag=lgp.beeQueen] run scoreboard objectives remove lgp.beeQueen.hasStung
    #获取分数
    execute as @e[tag=lgp.beeQueen] store result score @s lgp.beeQueen.uuid run data get entity @s AngryAt[0] 1
    execute as @e[tag=lgp.beeQueen] store result score @s lgp.beeQueen.hasStung run data get entity @s HasStung 1
    #生成检测死亡的marker
    execute at @e[tag=lgp.beeQueenInit] run summon marker ~ ~ ~ {Tags:["lgp.beeQueen.tickTimer"]}


#设置仇恨
    execute as @e[tag=lgp.beeQueen] at @s unless score @s lgp.beeQueen.uuid matches -2147483648..-1 unless score @s lgp.beeQueen.uuid matches 1..2147483647 run damage @s 0 minecraft:generic by @e[tag=player.group,tag=!player.operTags,limit=1,sort=nearest,distance=..10]
    execute as @e[tag=lgp.beeQueen,scores={lgp.beeQueen.hasStung=1}] run data modify entity @s HasStung set value 0b

#bossbar
    execute unless entity @e[tag=lgp.beeQueen] run bossbar remove bee_queen
    execute if entity @e[tag=lgp.beeQueen] run bossbar add bee_queen "蜂后"
    bossbar set bee_queen color yellow
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.beeQueen] run bossbar set bee_queen players @a[distance=..20]
    bossbar set bee_queen style notched_6
    bossbar set bee_queen max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.beeQueen] store result bossbar bee_queen value run data get entity @s Health 1.0
