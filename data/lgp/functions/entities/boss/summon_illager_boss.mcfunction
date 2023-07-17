kill @e[type=#minecraft:raiders]
kill @e[type=minecraft:item]
#三英战吕布
    #三大刌民BOSS（三英）
    execute summon minecraft:pillager run function lgp:entities/boss/pillager_captain/model
    #function lgp:entities/boss/illusioner/model
   # execute summon minecraft:witch run function lgp:entities/boss/strange_witch/model
    summon minecraft:snow_golem ~ ~ ~ {Tags:["lgp.BOSS"]}
    #吕布
    #监守者
    execute summon minecraft:warden run function lgp:entities/boss/warden/model
    tag @e[type=minecraft:warden] add player.group

    #开战！
    schedule function lgp:entities/boss/delay_damaged 1s replace
