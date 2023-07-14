#解锁第四章
    execute if entity @a[scores={lgp.worldProcess=10..}] run advancement grant @a only lgp:chapter_2/end
    execute if entity @a[scores={lgp.worldProcess=10..}] run advancement grant @a only lgp:chapter_3/root

#设置进程分数
    scoreboard players set @a[scores={lgp.worldProcess=..7},advancements={lgp:chapter_3/get_turtle_helmet=true}] lgp.worldProcess 8
    scoreboard players set @a[scores={lgp.worldProcess=..8},advancements={lgp:chapter_3/activate_conduit=true}] lgp.worldProcess 9
    scoreboard players set @a[scores={lgp.worldProcess=..9},advancements={lgp:chapter_3/kill_elder_guardians=true}] lgp.worldProcess 10
