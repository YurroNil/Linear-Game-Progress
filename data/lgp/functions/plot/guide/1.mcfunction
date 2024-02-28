scoreboard players add guide.1 lgp.plot 1
execute if score guide.1 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"远方的来客，欢迎来到我们的村庄！请问需要什么帮助吗？"}]}
execute if score guide.1 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"什么，你想去末地？没问题，我们可以告诉你方法！但是我们想请你帮忙。"}]}
execute if score guide.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"是这样的，我们的村庄总是受到灾厄村民的骚扰！他们是一群强盗，时常来这里烧杀抢掠，搞得我们天天担惊受怕。我们想请你保护我们，并且去他们的老巢干掉首领！"}]}
execute if score guide.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 350 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"如果你成功击败他们的首领，我们就会告诉你去往末地的方法。同时以后也会在你打败末影龙的路上为你提供帮助。"}]}
execute if score guide.1 lgp.plot matches 350 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 550 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"在此之前，我觉得你应该先把自己变的强大些，你现在看起来什么都没有..."}]}
execute if score guide.1 lgp.plot matches 550 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 700 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"确实，你至少需要一套装备。在做装备之前，先做个石镐吧！"}]}
execute if score guide.1 lgp.plot matches 700 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 900.. run advancement grant @a only lgp:guide_part1/plot_tips1

execute if score guide.1 lgp.plot matches 900.. run scoreboard players reset guide.1.loop lgp.plot
