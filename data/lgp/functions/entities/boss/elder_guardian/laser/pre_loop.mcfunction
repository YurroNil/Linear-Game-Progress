playsound minecraft:ambient.underwater.loop.additions.rare voice @a ~ ~ ~ 1000 0 1
particle minecraft:effect ~ ~ ~ 1 1 1 0 100 force @a
tp @s ~ ~ ~ facing entity @e[tag=player.group,tag=!player.operTags,sort=nearest,limit=1,tag=!player.operTags,distance=..20]
