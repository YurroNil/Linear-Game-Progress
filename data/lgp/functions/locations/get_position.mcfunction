#生物位置
    #玩家
    execute as @a store result score @s lgp.PosX run data get entity @s Pos[0] 1.0
    execute as @a store result score @s lgp.PosY run data get entity @s Pos[1] 1.0
    execute as @a store result score @s lgp.PosZ run data get entity @s Pos[2] 1.0

    #其他生物
    execute as @e[type=#uin:tech/mobs] store result score @s lgp.PosX run data get entity @s Pos[0] 1.0
    execute as @e[type=#uin:tech/mobs] store result score @s lgp.PosY run data get entity @s Pos[1] 1.0
    execute as @e[type=#uin:tech/mobs] store result score @s lgp.PosZ run data get entity @s Pos[2] 1.0

