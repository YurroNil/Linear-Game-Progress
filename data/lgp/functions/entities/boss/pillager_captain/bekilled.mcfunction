function lgp:entities/boss/_loots/pillager_captain
scoreboard players add @s player.badOmen 1
execute at @s run playsound minecraft:entity.zombie_villager.converted voice @a ~ ~ ~ 1000 0 1
playsound minecraft:item.goat_horn.sound.5 voice @a ~ ~ ~ 1000 0.8 1
advancement revoke @s only lgp:_functions/boss/kill_the_pillager_captain
