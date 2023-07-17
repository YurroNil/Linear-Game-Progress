execute as @e[tag=ghast_gagb_unini] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=survival]
tag @e[tag=ghast_gagb_unini] remove ghast_gagb_unini
particle flame ~ ~ ~ 0 0 0 1 5 force @a
particle lava ~ ~ ~ 0 0 0 1 1 force @a
particle dripping_lava ~ ~ ~ 0.4 0.4 0.4 1 50 force @a
tp @s ^ ^ ^0.8

#爆炸效果
execute if entity @e[type=!area_effect_cloud,type=!ghast,distance=..1] run function aeac:monsters/mons_skill/ghast/fb_explo
execute unless block ~ ~ ~ #aeac:bigfb_ignore run function aeac:monsters/mons_skill/ghast/fb_explo