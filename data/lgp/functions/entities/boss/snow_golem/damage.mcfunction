#对玩家
    execute as @a[tag=!player.operTags,distance=..2.5] run damage @s 10 arrow by @e[type=minecraft:snow_golem,tag=lgp.snowGolem,limit=1,sort=nearest]

#对其他生物
    execute as @e[type=!minecraft:snow_golem,type=!#uin:tech/non_mobs,type=!player,distance=..4] run damage @s 10 arrow by @e[type=minecraft:snow_golem,tag=lgp.snowGolem,limit=1,sort=nearest]
