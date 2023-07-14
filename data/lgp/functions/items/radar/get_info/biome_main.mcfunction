execute unless score @s lgp.radarMode matches 2 run scoreboard players set @s lgp.radarMode 1

#主世界
     #地表-陆地
    execute unless predicate lgp:in_biome/tech/all_caves unless predicate lgp:in_biome/tech/ocean_all unless entity @s[scores={lgp.PosY=..30}] run function lgp:items/radar/get_info/in_overworld_surface

    #地表-海洋
    execute if predicate lgp:in_biome/tech/ocean_all unless entity @s[scores={lgp.PosY=..30}] run function lgp:items/radar/get_info/in_ocean

    #地下-洞穴
    execute unless predicate lgp:in_biome/tech/ocean_all if entity @s[scores={lgp.PosY=..40}] run function lgp:items/radar/get_info/in_caves
    execute if predicate lgp:in_biome/tech/all_caves unless entity @s[scores={lgp.PosY=..40}] run function lgp:items/radar/get_info/in_caves

