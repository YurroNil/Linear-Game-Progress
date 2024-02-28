#对点击者标记
    execute on attacker if data entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] SelectedItem.tag.display.Name run tag @s add lgp.tp_lodestone.player.try_change_current_text

 #以当前地点文本为执行者，获取点击者手中命名牌名称   
    execute as @e[tag=lgp.tp_lodestone.currentText,distance=..1,limit=1,sort=nearest] at @s run function lgp:blocks/tp_lodestone/obj/current_text/get_new_name

#对修改了名称的玩家
    execute on attacker at @s run function lgp:blocks/tp_lodestone/obj/player/change_current_text
    
#重置当前攻击状态
    function lgp:blocks/tp_lodestone/obj/root/attack/reset


    
