execute as @a at @s run function lgp:player_tick

execute as @e[tag=lgp.kill] on passengers run ride @s dismount
tp @e[tag=lgp.kill] ~ -1000 ~
kill @e[tag=lgp.kill]