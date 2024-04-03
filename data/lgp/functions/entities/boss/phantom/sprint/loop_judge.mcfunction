
#如果有玩家优先打玩家
    execute if entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] at @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] run function lgp:entities/boss/phantom/sprint/loop

#没有玩家优先打有player.group标签的生物
    execute unless entity @p[predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] at @e[tag=player.group,sort=nearest,limit=1,predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] run function lgp:entities/boss/phantom/sprint/loop

#没有目标生物清零重置
execute if entity @s[tag=lgp.phantom,tag=lgp.phantom.phase3,scores={lgp.phantom=1}] run function lgp:entities/boss/phantom/sprint/reset

execute if entity @s[tag=lgp.phantom,scores={lgp.phantom=385..}] unless entity @e[tag=player.group,predicate=lgp:locations/in_biome/tech/caves/layers/upper_layer,tag=!player.operTags] run function lgp:entities/boss/phantom/sprint/reset