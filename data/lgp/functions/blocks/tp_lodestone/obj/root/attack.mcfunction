#尝试获取最近点击者手上的命名牌名称
    execute on attacker as @s if data entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] SelectedItem.tag.display.Name run tag @s add lgp.tp_lodestone.player.try_change_current_text
    execute as @e[tag=lgp.tp_lodestone.currentText,distance=..1,limit=1,sort=nearest] at @s run function lgp:blocks/tp_lodestone/obj/current_text/get_new_name
    
#重置当前攻击状态
    function lgp:blocks/tp_lodestone/obj/root/attack/reset

#say attack
    
