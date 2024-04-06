scoreboard players add chapter1.3 lgp.plot 1
execute if score chapter1.3 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<其他村民1> "},{"text":"勇者太厉害了，居然能打败这群强大的敌人！"}]}
execute if score chapter1.3 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<其他村民2> "},{"text":"不愧是你，我就知道你能拯救我们的！"}]}
execute if score chapter1.3 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.yes voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<制图师村民> "},{"text":"灾厄村民的旗帜上似乎隐藏着一些加密信息，如果我们能够成功破译这些密文，或许就能揭示出他们的秘密，甚至找到他们老巢的具体位置。这可真是个值得一试的线索！"}]}
execute if score chapter1.3 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<制图师村民> "},{"text":"我可能需要更多的旗帜来进一步验证我的推测。你能帮我收集更多的旗帜吗？这对我来说非常重要，我相信通过深入分析这些旗帜，我们一定能获取到更多关于灾厄村民的信息。"}]}
execute if score chapter1.3 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score chapter1.3 lgp.plot matches 400.. run scoreboard players reset chapter1.3.loop lgp.plot