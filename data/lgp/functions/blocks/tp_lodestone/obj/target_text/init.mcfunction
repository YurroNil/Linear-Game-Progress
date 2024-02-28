data merge entity @s {Tags:["lgp.tp_lodestone.currentText","lgp.tp_lodestone.accessory"],billboard:"center",width:0.5f,text:'{"text":""}'}

execute store result score #lgp.tmp lgp.int run data get storage lgp:blocks/tp_lodestone destination_list[0].text
execute if score #lgp.tmp lgp.int matches 1.. run function lgp:blocks/tp_lodestone/obj/target_text/set_text
