
execute store result storage lgp:world/curse/ether check_curselevel int 1 run scoreboard players get #index lgp.etherCurseLv_atCurLoc

function lgp:world/curse/ether/check_curselevel/check with storage lgp:world/curse/ether

#end
    scoreboard players add #index lgp.etherCurseLv_atCurLoc 1
    execute unless score #assignSuccessful lgp.etherCurseLv_atCurLoc matches 1 unless score #index lgp.etherCurseLv_atCurLoc matches 5.. run function lgp:world/curse/ether/check_curselevel/run
