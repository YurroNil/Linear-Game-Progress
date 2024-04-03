#初始化
    execute at @s if entity @s[scores={lgp.phantom=325}] run function lgp:entities/boss/phantom/sprint/pre_init
    #面向玩家
    execute if entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] if entity @s[scores={lgp.phantom=326}] run tp @s ~ ~20 ~ facing entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags,distance=..50]
    #面向其他生物
    execute unless entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] if entity @s[scores={lgp.phantom=326}] run tp @s ~ ~20 ~ facing entity @e[tag=player.group,sort=nearest,limit=1,predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags,distance=..50]

#三阶段无cd疯狗冲刺
    execute unless score @s lgp.phantom.sprintTimes matches 1.. run scoreboard players set @s[tag=lgp.phantom.phase3,scores={lgp.phantom=326..345}] lgp.phantom 346
    scoreboard players set @s[tag=lgp.phantom.phase3,scores={lgp.phantom=326..345,lgp.phantom.sprintTimes=1..}] lgp.phantom 350

#冲刺
    #行为
        #对玩家
        execute if entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] at @s if entity @s[scores={lgp.phantom=326..350}] run tp @s ~ ~ ~ facing entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags,distance=..50]
        #对其他生物
        execute unless entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] at @s if entity @s[scores={lgp.phantom=326..350}] run tp @s ~ ~ ~ facing entity @e[tag=player.group,sort=nearest,limit=1,predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags,distance=..50]
        #冲刺开始
        execute if entity @s[scores={lgp.phantom=360}] run data modify entity @s Invulnerable set value 1b
        execute at @s if entity @s[scores={lgp.phantom=360..379}] run function lgp:entities/boss/phantom/sprint/sprinting
        #三阶段缩短冲刺持续时间
        scoreboard players set @s[scores={lgp.phantom=365}] lgp.phantom 380

#结束
execute at @s if entity @s[scores={lgp.phantom=380}] run function lgp:entities/boss/phantom/sprint/end
execute if entity @s[scores={lgp.phantom=385..}] run function lgp:entities/boss/phantom/sprint/reset
