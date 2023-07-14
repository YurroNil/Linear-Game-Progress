scoreboard players add @s lgp.phantom.leave 1

execute if entity @s[scores={lgp.phantom.leave=1}] run particle witch ~ ~ ~ 0.6 0.2 0.6 1 500 force @a
execute if entity @s[scores={lgp.phantom.leave=1}] run playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~ ~ 1000 1 1
execute if entity @s[scores={lgp.phantom.leave=1}] run playsound minecraft:entity.wither.death voice @a ~ ~ ~ 1000 2 1
execute if entity @s[scores={lgp.phantom.leave=2}] run tp @s ~ -255 ~
execute if entity @s[scores={lgp.phantom.leave=2},nbt={Invulnerable:1b}] run data modify entity @s Invulnerable set value 0b
execute if entity @s[scores={lgp.phantom.leave=3..}] run damage @s 99999 minecraft:generic by @e[tag=!player.group,type=!player,limit=1]
