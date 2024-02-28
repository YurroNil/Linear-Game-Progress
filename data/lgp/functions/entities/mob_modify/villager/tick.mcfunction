#无职业村民重置
    scoreboard players reset @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:none"}}] lgp.villagerData

#盔甲商商品初始化
    #检测升级
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:armorer"}}] store result score @s lgp.villagerLevel run data get entity @s VillagerData.level
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:armorer"}}] unless score @s lgp.villagerLevel = @s lgp.villagerData run function lgp:entities/mob_modify/villager/armorer_inited

#武器匠商品初始化
    #检测升级
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] store result score @s lgp.villagerLevel run data get entity @s VillagerData.level
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] unless score @s lgp.villagerLevel = @s lgp.villagerData run function lgp:entities/mob_modify/villager/weaponsmith_inited

#工具匠商品初始化
    #检测升级
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:toolsmith"}}] store result score @s lgp.villagerLevel run data get entity @s VillagerData.level
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:toolsmith"}}] unless score @s lgp.villagerLevel = @s lgp.villagerData run function lgp:entities/mob_modify/villager/toolsmith_inited

#制图师初始化
    #检测升级
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:cartographer"}}] store result score @s lgp.villagerLevel run data get entity @s VillagerData.level
    execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:cartographer"}}] unless score @s lgp.villagerLevel = @s lgp.villagerData run function lgp:entities/mob_modify/villager/cartographer_inited