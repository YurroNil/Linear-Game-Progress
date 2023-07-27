scoreboard players add chapter2.1 lgp.plot 1
execute if score chapter2.1 lgp.plot matches 300 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"终于击败首领了！感谢勇者，以后你就是我们村庄的英雄！之后你有什么需求我们尽量满足的。"}]}
execute if score chapter2.1 lgp.plot matches 300 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 噢对了，差点忘了告诉你去末地的方法！"}]}
execute if score chapter2.1 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 500 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 我听说深海中的海洋神殿里有一个传送门，你可以通过它前往末地。但是海底神殿很危险，里面的守卫者很强，数量也多，建议谨慎前行！"}]}
execute if score chapter2.1 lgp.plot matches 500 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 700 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 除此之外，在没有任何抗诅咒的道具下是无法潜海的。海龟帽是当前最好的选择，既成本低又能抗海洋诅咒。"}]}
execute if score chapter2.1 lgp.plot matches 700 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 900 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 海龟帽需要\"5个海龟鳞片+神秘物品\"合成，然后去湿地和丛林击杀BOSS收集一些物品。这有点复杂，可以先一步步来。"}]}
execute if score chapter2.1 lgp.plot matches 900 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 1100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 在当前情况下，我建议你收集各类食材合成宝宝奶昔，去一趟丛林给熊猫吃...然后你就会与蜂后战斗了。"}]}
execute if score chapter2.1 lgp.plot matches 1100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 1300 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 击杀蜂后获取丛林之星后，你就能去沼泽了。沼泽的事之后再说吧，不是我不想说，而是"},{"text":"作者不让我说","strikethrough": true},{"text":"让你更好的消化。总之我先说到这了！"}]}
execute if score chapter2.1 lgp.plot matches 1300 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter2.1 lgp.plot matches 1400.. run advancement grant @a only lgp:chapter_2/plot_tips1
execute if score chapter2.1 lgp.plot matches 1400.. run function lgp:plot/chapter_2/reset