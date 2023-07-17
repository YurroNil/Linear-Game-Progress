#重置位置
tp @s ~ ~20 ~

#二阶段cd
    scoreboard players reset @s[tag=lgp.phantom.phase2] lgp.phantom

#三阶段无cd疯狗冲刺三连
    scoreboard players add @s[tag=lgp.phantom.phase3] lgp.phantom.sprintTimes 1
    scoreboard players set @s[tag=lgp.phantom.phase3,scores={lgp.phantom.sprintTimes=3..}] lgp.phantom 100
    scoreboard players reset @s[tag=lgp.phantom.phase3,scores={lgp.phantom.sprintTimes=3..}] lgp.phantom.sprintTimes

    scoreboard players set @s[tag=lgp.phantom.phase3,scores={lgp.phantom.sprintTimes=..2}] lgp.phantom 324
#结束
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
tag @s remove lgp.phantom.sprinting
schedule function lgp:entities/boss/phantom/sprint/angered_warden 1s