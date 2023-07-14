
#如果有玩家优先打玩家
    execute if entity @p[scores={lgp.PosY=50..},tag=!player.operTags] at @p[scores={lgp.PosY=50..},tag=!player.operTags] run function lgp:boss/phantom/sprint/loop

#没有玩家优先打有player.group标签的生物
    execute unless entity @p[scores={lgp.PosY=50..},tag=!player.operTags] at @e[tag=player.group,sort=nearest,limit=1,scores={lgp.PosY=50..},tag=!player.operTags] run function lgp:boss/phantom/sprint/loop

#没有目标生物清零重置
execute if entity @s[tag=lgp.phantom,scores={lgp.phantom=385..}] unless entity @e[tag=player.group,scores={lgp.PosY=50..},tag=!player.operTags] run function lgp:boss/phantom/sprint/reset