#获取当前实体所在的位置的诅咒等级
function lgp:world/curse/ender/check_curselevel/_running_commands

#设置storage的值
execute store result storage lgp:entity/entities/mob_modify/_equipment currentEnderCurseLv int 1 run scoreboard players get @s lgp.enderCurseLv_atCurLoc

#根据当前位置的诅咒等级，给予不同强度的装备
function lgp:entities/mob_modify/_equipment/ender_curse/equip_replace with storage lgp:entity/entities/mob_modify/_equipment

function lgp:entities/mob_modify/_equipment/ender_curse/end