#BOSS数值初始化
    data merge entity @s {Tags:["lgp.BOSS","lgp.elderGuardian","lgp.location.mobReplaced"],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:100.0d},{Name:"minecraft:generic.armor",Base:200.0d},{Name:"minecraft:generic.armor_toughness",Base:200.0d}],Health:100.0f,PersistenceRequired:1b,NoAI:0b}

    #计分板
    scoreboard objectives add lgp.elderGuardian dummy
    scoreboard players set deathDetector lgp.elderGuardian 1
# 添加标签
    function lgp:boss/elder_guardian/add_tags/1

#生成检测实体
    summon marker ~ ~ ~ {Tags:["lgp.elderGuardian.tickTimer"]}

#完成
    tag @s add lgp.elderGuardian_Inited
    tag @e[predicate=lgp:in_structure/monument,type=#lgp:guardians] add lgp.guardian.type
    