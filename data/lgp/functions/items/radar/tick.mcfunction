#使用
    #生成交互实体
        execute at @a[nbt={SelectedItem:{id:"minecraft:compass",tag:{lgpTags:"radar"}}}] positioned ~ ~1 ~ run summon minecraft:interaction ~ ~ ~ {Tags:["lgp.radar.interaction"],width:5}

    #左键
        execute as @e[tag=lgp.radar.interaction] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:compass",tag:{lgpTags:"radar"}}}] run tag @s add lgp.radar.leftClick

        #更新指向附近位置玩家
        tag @a[tag=lgp.radar.leftClick,scores={lgp.radar=1..}] remove lgp.radar.leftClick
        execute as @a[tag=lgp.radar.leftClick] at @s run function lgp:items/radar/point_to_player/judge
        tag @e[tag=lgp.radar.player_getPosFailed] remove lgp.radar.player_getPosFailed
        tag @e[tag=lgp.radar.player_getPosSuccess] remove lgp.radar.player_getPosSuccess

    #右键
        execute as @e[tag=lgp.radar.interaction] store result score @s lgp.radar.rightClick run data get entity @s interaction.player[0] 1.0
        execute at @e[tag=lgp.radar.interaction,scores={lgp.radar.rightClick=-2147483648..-1}] run tag @p add lgp.radar.rightClick
        execute at @e[tag=lgp.radar.interaction,scores={lgp.radar.rightClick=1..2147483647}] run tag @p add lgp.radar.rightClick
        tag @a[tag=lgp.radar.rightClick,scores={lgp.radar=1..}] remove lgp.radar.rightClick

        execute as @a[tag=lgp.radar.rightClick] at @s run function lgp:items/radar/get_info/tick


    #F键
        tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass",tag:{lgpTags:"radar"}}]}] add lgp.radar.fClick
        execute as @a[tag=lgp.radar.fClick] at @s run function lgp:items/radar/swtich_mode/swtich


    #reset
        scoreboard players add @e[tag=lgp.radar.interaction] lgp.radar 1
        kill @e[tag=lgp.radar.interaction,scores={lgp.radar=3..}]

#合成
    execute as @a[nbt={recipeBook:{recipes:["lgp:crafted/radar"]}}] run function lgp:items/radar/item/crafted

#雷达冷却
    scoreboard players add @a[scores={lgp.radar=1..}] lgp.radar 1
    execute as @a[scores={lgp.radar=40..}] run function lgp:items/radar/cooldown/reset
