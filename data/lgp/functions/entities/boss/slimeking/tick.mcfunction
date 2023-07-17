#BOSS生成
    execute if entity @a[scores={lgp.worldProcess=6..}] if score slimeKing.allowSummon lgp.world matches 1 as @e[type=#uin:tech/hostile,tag=!lgp.slimeVerified,predicate=lgp:in_biome/mangrove_swamp] at @s unless entity @e[type=slime,tag=lgp.slimeKing,predicate=lgp:in_biome/mangrove_swamp,distance=..300] run tag @e[type=#uin:tech/hostile,tag=!lgp.slimeVerified,predicate=lgp:in_biome/mangrove_swamp,limit=1] add lgp.slimeKing.summonMarker
    #生成史莱姆王
    execute at @e[tag=lgp.slimeKing.summonMarker] run function lgp:entities/boss/slimeking/summon
    #初始化
    execute as @e[tag=lgp.slimeKing_init] at @s positioned over motion_blocking run tp @s ~ ~ ~ ~ ~
    execute as @e[tag=lgp.slimeKing_init] at @s run fill ~13 ~13 ~13 ~-13 ~ ~-13 air
    tag @e[tag=lgp.slimeKing_init] remove lgp.slimeKing_init

    #reset
    tag @e[tag=lgp.slimeKing.summonMarker] remove lgp.slimeKing.summonMarker
    tag @e[type=#uin:tech/hostile,tag=!lgp.slimeKing,predicate=lgp:in_biome/mangrove_swamp] add lgp.slimeVerified

#史莱姆王bossbar
    execute unless entity @e[tag=lgp.slimeKing] run bossbar remove slime_king
    execute if entity @e[tag=lgp.slimeKing] run bossbar add slime_king "史莱姆王"
    bossbar set slime_king color green
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.slimeKing] run bossbar set slime_king players @a[distance=..100]
    bossbar set slime_king style notched_6
    bossbar set slime_king max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.slimeKing] store result bossbar slime_king value run data get entity @s Health 1.0


#史莱姆王分身
    #添加标签
    execute as @e[type=minecraft:slime,tag=!lgp.slimeKing.clone,tag=!lgp.slimeKing,nbt={CustomName:'{"bold":true,"color":"green","text":"史莱姆王"}'}] run data merge entity @s {CustomName:'{"bold":true,"color":"green","text":"史莱姆王"}',Tags:["lgp.slimeKing.clone","lgp.BOSS","lgp.slimeKing.type"],Glowing:1b}

    #小史莱姆造成伤害
    execute as @e[tag=player.group,tag=!player.operTags] at @s if entity @e[tag=lgp.slimeKing.clone,nbt={Size:0},distance=..1.5] run damage @s 2.0 minecraft:generic by @e[tag=lgp.slimeKing.clone,nbt={Size:0},limit=1,sort=nearest]

    #检测是否算完全死亡
    execute if entity @e[tag=lgp.slimeKing.tickTimer] run scoreboard objectives add lgp.slimeKing dummy
    execute if score deathDetector lgp.slimeKing matches 1 unless entity @e[tag=lgp.slimeKing.type] run scoreboard players add @e[tag=lgp.slimeKing.tickTimer] lgp.slimeKing 1
    execute if entity @e[tag=lgp.slimeKing.type] run scoreboard players reset @e[tag=lgp.slimeKing.tickTimer] lgp.slimeKing

    execute as @e[tag=lgp.slimeKing.tickTimer,scores={lgp.slimeKing=80..}] run function lgp:entities/boss/slimeking/bekilled


#史莱姆王分身bossbar
    #bossbar样式
    execute unless entity @e[tag=lgp.slimeKing.clone] run bossbar remove slime_king_clone
    execute if entity @e[tag=lgp.slimeKing.clone] run bossbar add slime_king_clone {"text":"史莱姆王——分身数量剩余:","extra":[{"score":{"name":"#slimeKing.cloneCurrentNum","objective":"lgp.slimeKing"}}]}
    bossbar set slime_king_clone name {"text":"史莱姆王——分身数量剩余:","extra":[{"score":{"name":"#slimeKing.cloneCurrentNum","objective":"lgp.slimeKing"}}]}
    bossbar set slime_king_clone color green
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.slimeKing.clone] run bossbar set slime_king_clone players @a[distance=..100]
    bossbar set slime_king_clone style notched_6

    #获取bossbar最大值+数量
    execute store result score #slimeKing.cloneCurrentNum lgp.slimeKing if entity @e[tag=lgp.slimeKing.clone]

    execute unless score #slimeKing.cloneCurrentNum lgp.slimeKing < #slimeKing.cloneMaxNum lgp.slimeKing run scoreboard players operation #slimeKing.cloneMaxNum lgp.slimeKing = #slimeKing.cloneCurrentNum lgp.slimeKing

    execute store result bossbar slime_king_clone max run scoreboard players get #slimeKing.cloneMaxNum lgp.slimeKing
    execute store result bossbar slime_king_clone value run scoreboard players get #slimeKing.cloneCurrentNum lgp.slimeKing

#设置史莱姆王的生成CD为10天一周期
    execute if score slimeKing.inCD lgp.world matches 1 if score timeTick lgp.world matches 1 run scoreboard players add #slimeKing.inCD.dayPeriod lgp.world 1
    execute if score #slimeKing.inCD.dayPeriod lgp.world matches 10.. run function lgp:entities/boss/slimeking/cd_reset

