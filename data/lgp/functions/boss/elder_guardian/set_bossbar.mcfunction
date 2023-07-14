#bossbar
    execute unless entity @e[tag=lgp.elderGuardian.bossType1] run bossbar remove elder_guardian1
    execute if entity @e[tag=lgp.elderGuardian.bossType1] run bossbar add elder_guardian1 "远古守卫者——袋子"
    bossbar set elder_guardian1 color blue
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType1] run bossbar set elder_guardian1 players @a[distance=..40]
    bossbar set elder_guardian1 style notched_6
    bossbar set elder_guardian1 max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType1] store result bossbar elder_guardian1 value run data get entity @s Health 1.0

    execute unless entity @e[tag=lgp.elderGuardian.bossType2] run bossbar remove elder_guardian2
    execute if entity @e[tag=lgp.elderGuardian.bossType2] run bossbar add elder_guardian2 "远古守卫者——沙子"
    bossbar set elder_guardian2 color blue
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType2] run bossbar set elder_guardian2 players @a[distance=..40]
    bossbar set elder_guardian2 style notched_6
    bossbar set elder_guardian2 max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType2] store result bossbar elder_guardian2 value run data get entity @s Health 1.0

    execute unless entity @e[tag=lgp.elderGuardian.bossType3] run bossbar remove elder_guardian3
    execute if entity @e[tag=lgp.elderGuardian.bossType3] run bossbar add elder_guardian3 "远古守卫者——答辩"
    bossbar set elder_guardian3 color blue
    execute at @a at @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType3] run bossbar set elder_guardian3 players @a[distance=..40]
    bossbar set elder_guardian3 style notched_6
    bossbar set elder_guardian3 max 100
    execute at @a as @e[sort=nearest,limit=1,tag=lgp.elderGuardian.bossType3] store result bossbar elder_guardian3 value run data get entity @s Health 1.0



