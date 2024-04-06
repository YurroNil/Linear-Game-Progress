scoreboard players add guide.1 lgp.plot 1
execute if score guide.1 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"远方的朋友，欢迎莅临\"草林村庄\"！你有什么需要帮忙的地方吗？请尽管告诉我们，我们会尽力为你提供帮助。"}]}
execute if score guide.1 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 100 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"啊，你想去末地挑战末影龙吗？我们直到如何前往末地的方法，也会和你分享我们的情报。不过在此之前，我们有一件大事想请你帮一下，不知你能否答应呢？"}]}
execute if score guide.1 lgp.plot matches 100 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"我们村庄一直饱受灾厄村民的侵扰，他们像一群强盗般时常烧杀抢掠，让我们每天都生活在恐惧之中。我们希望你能伸出援手，保护我们的家园，并深入他们的老巢，将首领一举歼灭！这样我们才能重获安宁，过上平静的生活。"}]}
execute if score guide.1 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 350 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"只要你能够成功击败那些灾厄村民的首领，我们不仅会向你透露前往末地的秘密，还会在你挑战末影龙的旅途中，为你提供必要的帮助与支持。"}]}
execute if score guide.1 lgp.plot matches 350 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 550 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"在此之前，我认为你需要先让自己变得更加强大。你目前看起来似乎还没有什么装备，但别担心，我们可以从基础开始！"}]}
execute if score guide.1 lgp.plot matches 550 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 700 run tellraw @a {"text":"","extra":[{"text":"<村长> "},{"text":"首先，你可以尝试制作一把石镐，这样你就能开始采集资源，进而制作更高级的装备了！"}]}
execute if score guide.1 lgp.plot matches 700 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.1 lgp.plot matches 900.. run advancement grant @a only lgp:advancement/guide_part1/plot_tips1

execute if score guide.1 lgp.plot matches 900.. run scoreboard players reset guide.1.loop lgp.plot
