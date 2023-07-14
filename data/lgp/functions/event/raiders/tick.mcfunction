
#判断是否处于袭击事件
    execute as @e[type=#minecraft:raiders] store result score @s lgp.raiders run data get entity @s RaidId
    execute if entity @e[type=#minecraft:raiders,scores={lgp.raiders=1..}] run scoreboard players set inRaiders lgp.raiders 1

#侦测当前袭击的波数
execute if score inRaiders lgp.raiders matches 1 as @e[type=#minecraft:raiders] store result score wave lgp.raiders run data get entity @s Wave

#平衡袭击难度
    execute unless entity @a[scores={lgp.worldProcess=4..}] if score inRaiders lgp.raiders matches 1 as @a run function lgp:event/raiders/balance_difficulty
