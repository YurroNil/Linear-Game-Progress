scoreboard players add chapter1.3 lgp.plot 1
execute if score chapter1.3 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<其他村民1> "},{"text":"勇者太厉害了，居然能打败这群强大的敌人！"}]}
execute if score chapter1.3 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<其他村民2> "},{"text":"不愧是你，我就知道你能拯救我们的！"}]}
execute if score chapter1.3 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<制图师村民> "},{"text":"他们的灾厄旗帜好像有一些加密信息，我觉得能从这些加密信息破译出灾厄村民的一些信息，说不定还能获取他们老巢的位置信息。"}]}
execute if score chapter1.3 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<制图师村民> "},{"text":"我可能需要更多的旗帜来验证我的想法，可以帮我收集更多的旗帜吗？"}]}
execute if score chapter1.3 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 400.. run scoreboard players reset chapter1.3.loop lgp.plot