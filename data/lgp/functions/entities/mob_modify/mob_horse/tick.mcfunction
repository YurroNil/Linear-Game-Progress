function lgp:entities/mob_modify/mob_horse/kill {"makingExplode_command11":"execute as @e[type=#lgp:mob_horses] at @s unless data entity @s Passengers[0] if entity @e[type=#uin:tech/neutral,distance=..7] run ","makingExplode_command12":"execute as @e[type=#lgp:mob_horses] at @s unless data entity @s Passengers[0] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..7] run ","makingExplode_command21":"data merge entity @s {Invulnerable:1b}","makingExplode_command22":"summon tnt"}
execute if entity @e[type=#uin:tech/neutral,distance=..7]