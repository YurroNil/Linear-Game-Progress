scoreboard players add chapter1.4 lgp.plot 1
execute if score chapter1.4 lgp.plot matches 1000 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"终于击败首领了！感谢勇者，以后你就是我们村庄的英雄！之后你有什么需求我们尽量满足的。"}]}
execute if score chapter1.4 lgp.plot matches 1000 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1100 run tellraw @a {"text":"","extra":[{"text":"<村长> 噢对了，差点忘了告诉你去末地的方法！"}]}
execute if score chapter1.4 lgp.plot matches 1100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1200 run tellraw @a {"text":"","extra":[{"text":"<村长> 传闻中，海洋的深处中有一个古老的神殿，里面有一个传送门可以通往末地，以前的勇者都是从那里去往末地的。虽然都是一去不复返的旅程..."}]}
execute if score chapter1.4 lgp.plot matches 1200 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1300 run tellraw @a {"text":"","extra":[{"text":"<村长> 前往海底需要海龟帽，否则会受到诅咒伤害，海龟帽需要神秘物品与海龟壳合成。"}]}
execute if score chapter1.4 lgp.plot matches 1300 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1400 run tellraw @a {"text":"","extra":[{"text":"<村长> 至于神秘物品嘛，听以前的勇者说需要凑齐凝胶、神秘的药水和高级蜂蜜块和蝌蚪桶。"}]}
execute if score chapter1.4 lgp.plot matches 1400 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 2000.. run scoreboard players reset chapter1.4.loop lgp.plot