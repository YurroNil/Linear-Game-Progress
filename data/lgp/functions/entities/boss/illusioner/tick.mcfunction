#林地府邸BOSS生成

    #生成位置
    execute as @e[type=evoker,tag=!lgp.evoker,predicate=lgp:locations/in_structure/mansion] at @s unless entity @e[type=illusioner,distance=..100] run tag @e[type=evoker,tag=!lgp.evoker,predicate=lgp:locations/in_structure/mansion,limit=1] add lgp.illusioner.summonMarker
    #生成幻术师BOSS
    execute at @e[tag=lgp.illusioner.summonMarker] run function lgp:entities/boss/illusioner/model

    #reset
    tag @e[tag=lgp.illusioner.summonMarker] remove lgp.illusioner.summonMarker
    tag @e[type=evoker,predicate=lgp:locations/in_structure/mansion] add lgp.evoker

#bossbar
    execute unless entity @e[tag=lgp.illusioner] run bossbar remove illusioner
    execute if entity @e[tag=lgp.illusioner] run bossbar add illusioner "幻术师"
    bossbar set illusioner color blue
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.illusioner] run bossbar set illusioner players @a[distance=..20]
    bossbar set illusioner style notched_6
    bossbar set illusioner max 70
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.illusioner] store result bossbar illusioner value run data get entity @s Health 1.0
