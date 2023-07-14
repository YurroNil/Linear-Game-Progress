#设置BOSS
    execute as @e[type=minecraft:warden,tag=!lgp.warden] run function lgp:boss/warden/model
 
#bossbar
    execute unless entity @e[tag=lgp.warden] run bossbar remove lgp_warden
    execute if entity @e[tag=lgp.warden] run bossbar add lgp_warden "监守者"
    bossbar set lgp_warden color blue
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.warden] run bossbar set lgp_warden players @a[distance=..100]
    bossbar set lgp_warden style notched_6
    bossbar set lgp_warden max 500
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.warden] store result bossbar lgp_warden value run data get entity @s Health 1.0
