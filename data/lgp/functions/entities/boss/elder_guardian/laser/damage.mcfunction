particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 5 force @a
execute as @e[tag=player.group,tag=!player.operTags,distance=..1.5] run damage @s 20.0 minecraft:magic by @e[tag=lgp.elderGuardian.bossType3,limit=1,sort=nearest] from @e[tag=lgp.elderGuardian.marker,limit=1,sort=nearest]
