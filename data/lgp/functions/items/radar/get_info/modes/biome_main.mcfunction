execute unless score @s lgp.radarMode matches 2 run scoreboard players set @s lgp.radarMode 1

#主世界
     #地表-陆地
    execute unless predicate lgp:locations/in_biome/tech/caves/caves_all unless predicate lgp:locations/in_biome/tech/ocean_all if predicate lgp:locations/in_biome/tech/caves/layers/upper_layer run function lgp:items/radar/get_info/locations/in_overworld_surface

    #地表-海洋
    execute if predicate lgp:locations/in_biome/tech/ocean_all if predicate lgp:locations/in_biome/tech/caves/layers/upper_layer run function lgp:items/radar/get_info/locations/in_ocean

    #地下-洞穴
    execute unless predicate lgp:locations/in_biome/tech/ocean_all if predicate lgp:locations/in_biome/tech/caves/is_cave_areas run function lgp:items/radar/get_info/locations/in_caves

    execute if predicate lgp:locations/in_biome/tech/caves/caves_all if predicate lgp:locations/in_biome/tech/caves/layers/upper_layer run function lgp:items/radar/get_info/locations/in_caves

