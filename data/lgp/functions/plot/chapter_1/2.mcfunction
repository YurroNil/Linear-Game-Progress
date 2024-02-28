scoreboard players add chapter1.2 lgp.plot 1
execute if score chapter1.2 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民A> "},{"text":"不好啦！他们又来袭击了，这次还是史上规模最大的一次！"}]}
execute if score chapter1.2 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.hurt voice @s ~ ~ ~ 100 1 1

execute if score chapter1.2 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村民B> "},{"text":"他们该不会是来复仇的吧，果然不应该出这个骚主意！"}]}
execute if score chapter1.2 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.hurt voice @s ~ ~ ~ 100 1 1

execute if score chapter1.2 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民C> "},{"text":"老巢位置信息没搞到，这下好了，还把他们惹怒了！这下大家都得完啦！"}]}
execute if score chapter1.2 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 100 1 1

execute if score chapter1.2 lgp.plot matches 300 run tellraw @a {"text":"","extra":[{"text":"<村民D> "},{"text":"大家快躲起来！勇者，交给你了！"}]}
execute if score chapter1.2 lgp.plot matches 300 as @p run function lgp:advancement/chapter_1/raid_begins_rewards2
execute if score chapter1.2 lgp.plot matches 300 as @a at @s run playsound minecraft:entity.villager.ambient voice @s ~ ~ ~ 100 1 1

execute if score chapter1.2 lgp.plot matches 300.. run scoreboard players reset chapter1.2.loop lgp.plot