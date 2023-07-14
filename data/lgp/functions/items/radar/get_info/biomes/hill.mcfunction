function lgp:items/radar/get_info/search/do
execute if score getInfo.tempScore lgp.radar.rightClick matches -2147483648..2147483647 run tellraw @a[tag=lgp.radar.rightClick] {"text":"","extra":[{"text":"风袭丘陵生物群系","color":"green"},{"text":"最近一个生物距离你约有"},{"score":{"name": "getInfo.tempScore","objective": "lgp.radar.rightClick"},"color":"yellow"},{"text":"格."}]}
scoreboard players reset getInfo.tempScore lgp.radar.rightClick
scoreboard players set #noResults lgp.radar.rightClick 0