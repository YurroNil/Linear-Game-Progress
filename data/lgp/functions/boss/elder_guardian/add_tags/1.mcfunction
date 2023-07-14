execute unless entity @e[tag=lgp.elderGuardian.bossType1,distance=..100] run tag @s add lgp.elderGuardian.bossType1
effect give @e[tag=lgp.elderGuardian.bossType1] minecraft:regeneration infinite 0 true
execute if entity @s[tag=!lgp.elderGuardian.bossType1] run function lgp:boss/elder_guardian/add_tags/2