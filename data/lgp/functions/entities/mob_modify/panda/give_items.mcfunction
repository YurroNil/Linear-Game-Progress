execute as @p run function lgp:entities/boss/bee_queen/summon_spawnegg
playsound minecraft:entity.panda.eat voice @a ~ ~ ~ 1000 1 1
playsound minecraft:entity.panda.worried_ambient voice @a ~ ~ ~ 1000 1 1
playsound minecraft:entity.generic.eat voice @a ~ ~ ~ 1000 1 1
particle item minecraft:milk_bucket ~ ~ ~ 0.8 0.8 0.8 0.1 100 force @a
kill @s
