scoreboard players add chapter1.4 lgp.plot 1
execute if score chapter1.4 lgp.plot matches 1000 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"终于击败首领了！感谢勇者，以后你就是我们村庄的英雄！之后你有什么需求我们尽量满足的。"}]}
execute if score chapter1.4 lgp.plot matches 1000 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1100 run tellraw @a {"text":"","extra":[{"text":"<村长> 噢对了，差点忘了告诉你去末地的方法！"}]}
execute if score chapter1.4 lgp.plot matches 1100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1200 run tellraw @a {"text":"","extra":[{"text":"<村长> 传闻，末地传送门坐落于深邃的海洋神殿之中，那里是海洋的深处，充满了未知与危险。深海的末影诅咒等级高达5级。而你目前仅有2级末影净化，若想提升至5级，必须寻得丛林之晶、沼泽之晶和海洋之晶这三颗世界之晶。"}]}
execute if score chapter1.4 lgp.plot matches 1200 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1400 run tellraw @a {"text":"","extra":[{"text":"<村长> 关于这些世界之晶的具体位置，我们了解得并不详尽。我们村庄内也并无这些宝物。你的下一站，应当是前往丛林、沼泽和珊瑚海生物群系，寻找它们的踪迹。"}]}
execute if score chapter1.4 lgp.plot matches 1400 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1600 run tellraw @a {"text":"","extra":[{"text":"<村长> 首先，你需要收集的是丛林之晶(村民指向远方的丛林)。据我们所知，丛林之晶藏于丛林神庙之中，那里是丛林的圣地，充满了考验与机遇。"}]}
execute if score chapter1.4 lgp.plot matches 1600 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 1800 run tellraw @a {"text":"","extra":[{"text":"<村长> 至于沼泽之星，我们曾有村民探险者前往沼泽寻找，但不幸的是，他在途中被一个神秘的女巫所杀，沼泽之星也被她夺走。那位女巫的力量强大，你或许需要借助某种特殊道具才能战胜她。"}]}
execute if score chapter1.4 lgp.plot matches 1800 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 2000 run tellraw @a {"text":"","extra":[{"text":"<村长> "}]}
execute if score chapter1.4 lgp.plot matches 2000 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.4 lgp.plot matches 2000.. run scoreboard players reset chapter1.4.loop lgp.plot