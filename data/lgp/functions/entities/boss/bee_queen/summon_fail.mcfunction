tellraw @a {"text":"生成位置不符合条件.","bold":true,"color": "red"}
execute as @p run function lgp:entities/boss/bee_queen/give_spawnegg
playsound entity.bee.death voice @a ~ ~ ~ 1000 0 1
