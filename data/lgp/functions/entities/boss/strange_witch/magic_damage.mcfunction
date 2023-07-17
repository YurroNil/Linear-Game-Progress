#施法
    #音效+粒子
    particle minecraft:entity_effect ~ ~ ~ 0.3 0.3 0.3 0 500 force @a
    particle minecraft:electric_spark ~ ~ ~ 1 1 1 0 500 force @a
    playsound minecraft:entity.evoker.cast_spell voice @a ~ ~ ~ 1000 0 1
    execute at @e[tag=player.group,tag=!player.operTags,distance=..5] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 2 0.2 0 500 force @a
    
    #放闪电+伤害
        #对玩家
        execute as @a[tag=!player.operTags,distance=..5] run damage @s 14.0 minecraft:lightning_bolt by @e[tag=lgp.strangeWitch,limit=1]
        #对玩家外的生物
        execute as @e[type=!#uin:general/illagers,type=!player,type=!#uin:tech/non_mobs,distance=..5] run damage @s 200.0 minecraft:lightning_bolt by @e[tag=lgp.strangeWitch,limit=1]

    execute at @e[tag=player.group,tag=!player.operTags,distance=..5] run summon lightning_bolt
    summon lightning_bolt

    #施法后女巫眩晕
    data modify entity @s Rotation[1] set value 70.0f
    data modify entity @s NoAI set value 1b
    playsound minecraft:entity.pillager.hurt voice @a ~ ~ ~ 1 1.5 1