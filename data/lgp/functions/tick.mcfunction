execute as @a at @s run function lgp:player_tick

tag @a[tag=lgp.kill] remove lgp.kill
execute as @e[tag=lgp.kill,type=!player] on passengers run ride @s dismount
tp @e[tag=lgp.kill,type=!player] ~ -1000 ~
kill @e[tag=lgp.kill,type=!player]