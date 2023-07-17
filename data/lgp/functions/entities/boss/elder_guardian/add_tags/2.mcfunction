execute unless entity @e[tag=lgp.elderGuardian.bossType2,distance=..100] run tag @s add lgp.elderGuardian.bossType2
execute if entity @s[tag=!lgp.elderGuardian.bossType2] run function lgp:entities/boss/elder_guardian/add_tags/3
