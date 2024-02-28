#若传送磁石达成充能条件
execute if function lgp:blocks/tp_lodestone/check/power_around positioned ~ ~-0.5 ~ if function lgp:blocks/tp_lodestone/check/can_charge run function lgp:blocks/tp_lodestone/charge/1
