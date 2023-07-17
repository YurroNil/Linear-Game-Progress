#不掉落物品
    execute if score level lgp.world matches 1 as @e[type=minecraft:pillager,tag=!lgp.pillager] run data merge entity @s {HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
    tag @e[type=minecraft:pillager,tag=!lgp.pillager] add lgp.pillager
