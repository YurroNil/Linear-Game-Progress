#设置BOSS
    execute as @e[type=minecraft:witch,predicate=lgp:locations/in_structure/swamp_hut,tag=!lgp.strangeWitch] run function lgp:entities/boss/strange_witch/model
 
#bossbar
    execute unless entity @e[tag=lgp.strangeWitch] run bossbar remove strange_witch
    execute if entity @e[tag=lgp.strangeWitch] run bossbar add strange_witch "奇怪的女巫"
    bossbar set strange_witch color pink
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.strangeWitch] run bossbar set strange_witch players @a[distance=..20]
    bossbar set strange_witch style notched_6
    bossbar set strange_witch max 80
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.strangeWitch] store result bossbar strange_witch value run data get entity @s Health 1.0

#技能
execute if entity @e[tag=lgp.strangeWitch] run scoreboard objectives add lgp.strangeWitch dummy
execute unless entity @e[tag=lgp.strangeWitch] run scoreboard objectives remove lgp.strangeWitch
execute as @e[tag=lgp.strangeWitch] unless entity @s[scores={lgp.strangeWitch=220..}] at @s if entity @e[tag=player.group,tag=!player.operTags,distance=..7] run scoreboard players add @s lgp.strangeWitch 1

    #即将放技能-效果
    execute at @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=220}] run function lgp:entities/boss/strange_witch/magic_prepare
    execute at @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=220..280}] run particle witch ~ ~ ~ 0.6 0.6 0.6 0 10 force @a
    #施法+女巫眩晕
    execute as @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=280}] at @s run function lgp:entities/boss/strange_witch/magic_damage
    execute as @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=280..}] run item replace entity @s weapon.mainhand with air

    #女巫眩晕结束
    execute as @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=480..}] at @s run function lgp:entities/boss/strange_witch/reset

    scoreboard players add @e[tag=lgp.strangeWitch,scores={lgp.strangeWitch=220..}] lgp.strangeWitch 1
