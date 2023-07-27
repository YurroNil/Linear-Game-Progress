scoreboard players add chapter3.1 lgp.plot 1
execute if score chapter3.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 当你有了海龟帽后，先不要急着去海底神殿。那里危机重重，没有很好的辅助大概率会寄的！"}]}
execute if score chapter3.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter3.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 因此你需要潮涌核心！我建议你前往海底废墟找到藏宝图，藏宝图标记的宝藏中就会有潮涌核心的制作材料——海洋之心。"}]}
execute if score chapter3.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter3.1 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<村民向导> 勇者，我已经把我所有知道的都告诉你了，非常抱歉，只能帮到这里了！接下来的事只能靠自己做决策了。保重，祝你一路顺风！"}]}
execute if score chapter3.1 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter3.1 lgp.plot matches 400.. run advancement grant @a only lgp:chapter_3/plot_tips1
execute if score chapter3.1 lgp.plot matches 400.. run function lgp:plot/chapter_3/reset
