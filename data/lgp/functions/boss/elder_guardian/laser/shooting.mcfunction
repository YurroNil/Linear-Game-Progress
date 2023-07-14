scoreboard players add @s lgp.elderGuardian.bossType3 1

summon area_effect_cloud ~ ~ ~ {Tags:["lgp.elderGuardian.marker"],Duration:2}
execute if score @s lgp.elderGuardian.bossType3 matches ..59 positioned ^ ^ ^0.3 unless entity @e[tag=player.group,tag=!player.operTags,distance=..1] run function lgp:boss/elder_guardian/laser/shooting
execute if score @s lgp.elderGuardian.bossType3 matches 60.. run scoreboard players reset @s lgp.elderGuardian.bossType3
playsound minecraft:entity.elder_guardian.death voice @a ~ ~ ~ 0.4 0.7 0.4
playsound minecraft:block.end_gateway.spawn voice @a ~ ~ ~ 1000 2 1
