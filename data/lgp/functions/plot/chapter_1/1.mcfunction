scoreboard players add chapter1.1 lgp.plot 1
execute if score chapter1.1 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你看起来比之前要强很多！"}]}
execute if score chapter1.1 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"铁傀儡是我们全村最好的守卫，这是村长送你的铁傀儡刷怪蛋，希望能助你一臂之力。"}]}
execute if score chapter1.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1
execute if score chapter1.1 lgp.plot matches 150 run give @r minecraft:iron_golem_spawn_egg 2
execute if score chapter1.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"无畏的勇者，你是我们全村的希望！去寻找掠夺者前哨站吧，我们会等你的好消息！"}]}
execute if score chapter1.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.1 lgp.plot matches 300.. run advancement grant @a only lgp:chapter_1/plot_tips1

execute if score chapter1.1 lgp.plot matches 300.. run function lgp:plot/chapter_1/reset