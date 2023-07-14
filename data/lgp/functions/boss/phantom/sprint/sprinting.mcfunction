tp @s ^ ^ ^3
particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0 300 force @a
playsound minecraft:entity.phantom.bite voice @a ~ ~ ~ 1000 0 1
#造成伤害
    #对玩家
    execute as @a[distance=..3.5,tag=!player.operTags] at @s run damage @s 12 minecraft:generic by @e[tag=lgp.phantom,limit=1,sort=nearest]

    #对玩家外的生物
    execute as @e[distance=..6,type=!player,type=!#uin:tech/non_mobs,type=!minecraft:ender_dragon,type=!phantom] at @s run damage @s 30 minecraft:generic by @e[tag=lgp.phantom,limit=1,sort=nearest]
