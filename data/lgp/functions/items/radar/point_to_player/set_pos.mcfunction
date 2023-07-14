#设置storage
data modify storage minecraft:lgp.radar_pos LodestonePos set from entity @s SelectedItem.tag.LodestonePos

#获取lgp.radar.leftClick以外的最近一个玩家的坐标
execute as @p[tag=!lgp.radar.leftClick] run data modify storage lgp.radar_pos LodestonePos.X set from entity @s Pos[0]
execute as @p[tag=!lgp.radar.leftClick] run data modify storage lgp.radar_pos LodestonePos.Y set from entity @s Pos[1]
execute as @p[tag=!lgp.radar.leftClick] run data modify storage lgp.radar_pos LodestonePos.Z set from entity @s Pos[2]

#设置物品
execute if data storage minecraft:lgp.radar_pos LodestonePos run item modify entity @s weapon.mainhand lgp:item/radar/set_pos
data remove storage minecraft:lgp.radar_pos LodestonePos
tag @s add lgp.radar.player_getPosSuccess