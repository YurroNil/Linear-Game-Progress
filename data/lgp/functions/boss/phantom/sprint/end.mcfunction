playsound minecraft:block.end_gateway.spawn voice @a ~ ~ ~ 1000 0 1
summon lightning_bolt ~ ~ ~
particle minecraft:explosion ~ ~ ~ 1 1 1 1 100 force @a
#造成伤害
    #对玩家
    execute as @a[distance=..3.5,tag=!player.operTags] at @s run damage @s 20 minecraft:generic by @e[tag=lgp.phantom,limit=1,sort=nearest]

    #对玩家外的生物
    execute as @e[distance=..6,type=!player,type=!#uin:tech/non_mobs,type=!minecraft:ender_dragon,type=!phantom] at @s run damage @s 50 minecraft:generic by @e[tag=lgp.phantom,limit=1,sort=nearest]
