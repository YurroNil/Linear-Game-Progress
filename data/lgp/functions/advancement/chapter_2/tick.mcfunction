#解锁第三章
    execute if entity @a[scores={lgp.worldProcess=7..}] run advancement grant @a only lgp:chapter_2/end
    execute if entity @a[scores={lgp.worldProcess=7..}] run advancement grant @a only lgp:chapter_3/root


#设置进程分数
    scoreboard players set @a[scores={lgp.worldProcess=..5},advancements={lgp:chapter_2/kill_queenbee=true}] lgp.worldProcess 6
    scoreboard players set @a[scores={lgp.worldProcess=..6},advancements={lgp:chapter_2/get_horn_coral=true}] lgp.worldProcess 7


