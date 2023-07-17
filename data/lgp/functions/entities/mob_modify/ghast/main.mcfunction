#恶魂
execute as @e[type=fireball,tag=!sm_fb] run data modify entity @s ExplosionPower set value 4
execute at @e[type=fireball,tag=!sm_fb] run particle flame ~ ~ ~ 0.6 0.6 0.6 0 100 force @a

#普攻
execute as @e[type=ghast] at @s if entity @p[gamemode=survival,distance=..70] run scoreboard players add @s damaged_tktmr 1

execute as @e[type=ghast,scores={damaged_tktmr=100}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=ghast,scores={damaged_tktmr=120}] run data merge entity @s {Invulnerable:0b}
execute at @e[type=ghast,scores={damaged_tktmr=90}] run playsound minecraft:entity.ghast.warn voice @a ~ ~ ~ 10 0.8 1
execute at @e[type=ghast,scores={damaged_tktmr=100}] run playsound minecraft:entity.ghast.shoot voice @a ~ ~ ~ 10 0.7 1
execute at @e[type=ghast,scores={damaged_tktmr=100}] run summon area_effect_cloud ~ ~ ~ {Tags:["ghast_ga_fb","ghast_gagb_unini"],Duration:100}


scoreboard players set @e[type=ghast,scores={damaged_tktmr=120..}] damaged_tktmr 0
execute as @e[tag=ghast_ga_fb] at @s run function aeac:monsters/mons_skill/ghast/ghast_gafb_loop