item replace entity @s weapon.offhand with air
execute if score @s lgp.radarMode matches 2 run function lgp:items/radar/swtich_mode/1
execute unless score #swtich.lockScore lgp.radarMode matches 1 unless score @s lgp.radarMode matches 2 run function lgp:items/radar/swtich_mode/2
playsound minecraft:ui.button.click voice @s ~ ~ ~ 1 2 1
scoreboard players reset #swtich.lockScore lgp.radarMode
tag @s remove lgp.radar.fClick
