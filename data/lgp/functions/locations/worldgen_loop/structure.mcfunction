
#海洋神殿增益buff
    effect give @e[tag=player.group,tag=!player.operTags,scores={lgp.worldProcess=..10},predicate=lgp:in_structure/monument] resistance 10 3 true
    effect give @e[tag=player.group,tag=!player.operTags,scores={lgp.worldProcess=..10},predicate=lgp:in_structure/monument] strength 10 1 true

#林地府邸增益buff
    execute unless score level lgp.world matches 2.. run effect give @e[tag=player.group,tag=!player.operTags,predicate=lgp:in_structure/mansion] resistance 10 2 true

#未解锁的结构区域
    execute as @a[tag=!player.operTags,predicate=lgp:in_structure/tech/unlocked] at @s run function lgp:entities/player_modify/effects/damaged/dark_damage
