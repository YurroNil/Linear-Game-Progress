tellraw @s[tag=lgp.radar.player_getPosFailed] {"text":"","extra":[{"text":"[雷达] 更新失败.因为附近没有玩家.","color":"red"}]}
tellraw @s[tag=lgp.radar.player_getPosSuccess] {"text":"","extra":[{"text":"[雷达] 已更新雷达指向最近玩家的坐标为\""},{"selector":"@p[tag=!lgp.radar.leftClick]"},{"text":"\"."}]}
tag @s remove lgp.radar.leftClick
tag @s remove lgp.radar.player_getPosFailed

scoreboard players set @s lgp.radar 1
