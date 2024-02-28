# from
#define function lgp:player/right_click

#传送磁石被右键点击
data remove entity @s interaction

execute store result storage lgp:blocks/tp_lodestone input.idx int 1 run scoreboard players get @s lgp.tp_lodestone.index

#重命名
execute if data storage lgp:player input.SelectedItem{id:"minecraft:name_tag"} as @e[distance=..1,sort=nearest,limit=1,tag=lgp.tp_lodestone.currentText] run function lgp:blocks/tp_lodestone/current_text/update_text

#放置传送核心
execute if data storage lgp:player input.SelectedItem{id:"minecraft:purple_dye"}.tag{lgpTags:"tp_core"} as @e[distance=..1,sort=nearest,limit=1,tag=lgp.tp_lodestone.currentText] run function lgp:blocks/tp_lodestone/current_text/absorb_core

