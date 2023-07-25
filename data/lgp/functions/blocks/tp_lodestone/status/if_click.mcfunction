execute store result score @s lgp.tp_lodestone.rightClick run data get entity @s interaction.timestamp
execute store result score @s lgp.tp_lodestone.leftClick run data get entity @s attack.timestamp
execute on target as @s run tag @s add lgp.tp_lodestone.rightClick
execute on attacker as @s run tag @s add lgp.tp_lodestone.leftClick