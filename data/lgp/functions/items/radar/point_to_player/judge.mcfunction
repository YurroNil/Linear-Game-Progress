execute if entity @p[tag=!lgp.radar.leftClick] run function lgp:items/radar/point_to_player/set_pos
execute unless entity @p[tag=!lgp.radar.leftClick] run tag @s add lgp.radar.player_getPosFailed
advancement grant @s only lgp:_functions/items/radar_cd
playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 1 1.5 1