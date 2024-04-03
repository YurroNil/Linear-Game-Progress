
execute store result storage lgp:world/curse/ender check_curselevel int 1 run scoreboard players get #index lgp.enderCurseLv_atCurLoc

function lgp:world/curse/ender/check_curselevel/check with storage lgp:world/curse/ender

#end
    scoreboard players add #index lgp.enderCurseLv_atCurLoc 1
    execute unless score #assignSuccessful lgp.enderCurseLv_atCurLoc matches 1 unless score #index lgp.enderCurseLv_atCurLoc matches 11.. run function lgp:world/curse/ender/check_curselevel/run
