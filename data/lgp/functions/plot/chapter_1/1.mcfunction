scoreboard players add chapter1.1 lgp.plot 1
execute if score chapter1.1 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你看起来比之前要强很多！你应该能和灾厄村民的首领对抗了。"}]}
execute if score chapter1.1 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"我们不知道他们首领在哪，但我们听说有一些灾厄村民会在"},{"text":"掠夺者前哨站","color":"aqua","bold":true},{"text":"的地方扎营，说不定能从那里获取首领和他们老巢的信息。"}]}
execute if score chapter1.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"铁傀儡是我们全村最好的守卫，这是村长送你的铁傀儡刷怪蛋，希望能助你一臂之力。"}]}
execute if score chapter1.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 300 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你是我们全村的希望！去寻找掠夺者前哨站吧，我们会等你的好消息！"}]}
execute if score chapter1.1 lgp.plot matches 300 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 400.. run advancement grant @a only lgp:chapter_1/plot_tips1

execute if score chapter1.1 lgp.plot matches 400.. run scoreboard players reset chapter1.1.loop lgp.plot