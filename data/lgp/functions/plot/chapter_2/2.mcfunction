scoreboard players add chapter2.2 lgp.plot 1
execute if score chapter2.2 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 你做到了！"}]}
execute if score chapter2.2 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter2.2 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 沼泽诅咒解除后，你现在已经可以放心去沼泽找神秘的女巫和史莱姆王了。"}]}
execute if score chapter2.2 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.2 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 找到并击杀它们会有神秘物品的配方材料及合成配方信息。"}]}
execute if score chapter2.2 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.2 lgp.plot matches 400.. run advancement grant @a only lgp:chapter_2/plot_tips2
execute if score chapter2.2 lgp.plot matches 400.. run function lgp:plot/chapter_2/reset