#添加模板
    execute as @e[type=#uin:tech/hostile,tag=!lgp.equip.modified,tag=!lgp.BOSS,predicate=!lgp:entities/mob_modify/is_raidcaptain] at @s run function lgp:entities/mob_modify/_equipment/tick
