scoreboard players add chapter1.4 lgp.plot 1
execute if score chapter1.4 lgp.plot matches 1000 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"终于击败首领了！感谢勇者，以后你就是我们村庄的英雄！之后你有什么需求我们尽量满足的。"}]}
execute if score chapter1.4 lgp.plot matches 1000 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 噢对了，差点忘了告诉你去末地的方法！"},{"text":""}]}
execute if score chapter1.4 lgp.plot matches 1100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 2000.. run scoreboard players reset chapter1.4.loop lgp.plot