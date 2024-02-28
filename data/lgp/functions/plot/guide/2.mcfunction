scoreboard players add guide.2 lgp.plot 1
execute if score guide.2 lgp.plot matches 1 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"你现在拥有了石镐！你可以采集铜矿石和铁矿石了！你至少需要铁套和铁器才能与灾厄村民对抗。"}]}
execute if score guide.2 lgp.plot matches 1 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 200 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"为了制造铁套装和铁器，你需要去矿洞挖取大量的铁矿石。但是直接挖掘铁矿获取粗铁只能冶炼出铁粒，只靠铁粒是很难凑够并制作铁套装的。"}]}
execute if score guide.2 lgp.plot matches 200 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 400 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"精准采集的镐子能获取完整的铁矿石，铁矿石才能冶炼出铁锭。因此你现在需要先去矿洞挖取足够的铁矿石用铁粒制造一个铁砧。"}]}
execute if score guide.2 lgp.plot matches 400 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 600 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"在工具匠那里购买精准采集附魔书后，用镐子在铁砧敲上精准采集附魔，用它采集完整的铁矿石。"}]}
execute if score guide.2 lgp.plot matches 600 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1

execute if score guide.2 lgp.plot matches 800 run tellraw @a {"text":"","extra":[{"text":"<村民向导> "},{"text":"我送你140个粗铁和20个绿宝石。"}]}
execute if score guide.2 lgp.plot matches 800 as @p run function lgp:advancement/guide_part2/root_rewards
execute if score guide.2 lgp.plot matches 800 as @a at @s run playsound minecraft:entity.villager.celebrate voice @s ~ ~ ~ 100 1 1


execute if score guide.2 lgp.plot matches 900.. run advancement grant @a only lgp:guide_part2/plot_tips2

execute if score guide.2 lgp.plot matches 900.. run scoreboard players reset guide.2.loop lgp.plot
