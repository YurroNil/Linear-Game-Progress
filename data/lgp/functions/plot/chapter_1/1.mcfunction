scoreboard players add chapter1.1 lgp.plot 1
execute if score chapter1.1 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你看起来比之前更加强大了！有了装备优势，我相信你现在已经有能力与灾厄村民的首领对抗了。"}]}
execute if score chapter1.1 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"虽然我们不知道他们首领的具体位置，但据我们所知，一些灾厄村民会在名为"},{"text":"掠夺者前哨站","color":"aqua","bold":true},{"text":"的地方扎营。或许，那里会有关于首领和他们老巢的重要信息。你可以去那边探索一下。"}]}
execute if score chapter1.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"铁傀儡是我们全村最好的守卫，这是我们的村长送给你的铁傀儡刷怪蛋，希望能助你一臂之力。"}]}
execute if score chapter1.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 300 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你是我们全村的希望！去寻找掠夺者前哨站吧，我们会等你的好消息！"}]}
execute if score chapter1.1 lgp.plot matches 300 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 400.. run advancement grant @a only lgp:advancement/chapter_1/plot_tips1

execute if score chapter1.1 lgp.plot matches 400.. run scoreboard players reset chapter1.1.loop lgp.plot