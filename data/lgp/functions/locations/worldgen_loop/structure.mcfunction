
#海洋神殿增益buff
    effect give @e[tag=player.group,tag=!player.operTags,scores={lgp.worldProcess=..10},predicate=lgp:locations/in_structure/monument] resistance 10 3 true
    effect give @e[tag=player.group,tag=!player.operTags,scores={lgp.worldProcess=..10},predicate=lgp:locations/in_structure/monument] strength 10 1 true

#林地府邸增益buff
    execute unless score level lgp.world matches 2.. run effect give @e[tag=player.group,tag=!player.operTags,predicate=lgp:locations/in_structure/mansion] resistance 10 2 true

