#使用分数标识自身（被点击者）
    execute store result score @s lgp.tp_lodestone.rightClick run data get entity @s interaction.timestamp
    execute store result score @s lgp.tp_lodestone.leftClick run data get entity @s attack.timestamp

#使用标签标识点击者
    execute on target as @s run tag @s add lgp.tp_lodestone.rightClick
    execute on attacker as @s run tag @s add lgp.tp_lodestone.leftClick