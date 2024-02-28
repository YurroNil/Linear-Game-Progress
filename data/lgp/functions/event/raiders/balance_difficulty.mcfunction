effect give @e[type=#minecraft:raiders] minecraft:glowing infinite 0 true
effect give @e[type=#minecraft:raiders] minecraft:weakness infinite 0 true

#设置袭击怪物
    #唤魔者
    execute as @e[type=minecraft:evoker] at @s run function lgp:event/raiders/replace
    #劫掠兽
    execute unless score wave lgp.raiders matches 6.. as @e[type=minecraft:ravager] at @s run function lgp:event/raiders/replace
