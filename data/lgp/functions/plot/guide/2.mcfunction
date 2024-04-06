scoreboard players add guide.2 lgp.plot 1
execute if score guide.2 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"现在你手握石镐，已经具备了采集铜矿石和铁矿石的能力！但是，想要与灾厄村民抗衡，你至少需要拥有一套铁质装备和铁制工具。"}]}
execute if score guide.2 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"因此，接下来的任务便是前往矿洞，深入挖掘，获取足够的铁矿石。去采集吧，我们在这里静候你的归来！"}]}
execute if score guide.2 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 250.. run advancement grant @a only lgp:advancement/guide_part2/plot_tips2

execute if score guide.2 lgp.plot matches 250.. run scoreboard players reset guide.2.loop lgp.plot
