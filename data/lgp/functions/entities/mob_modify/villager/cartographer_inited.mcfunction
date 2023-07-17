#modify

    data modify entity @s Offers.Recipes[2].buy.id set value "minecraft:rotten_flesh"
    data modify entity @s Offers.Recipes[2].sell.id set value "minecraft:leather"
    data modify entity @s Offers.Recipes[2].sell.Count set value 1b
    
    data modify entity @s Offers.Recipes[3].buyB.id set value "minecraft:prismarine_shard"

    #设置灾厄旗帜
    data modify entity @s Offers.Recipes[5].buyB.id set value "minecraft:white_banner"
    data modify entity @s Offers.Recipes[5].buyB.Count set value 7
    data modify entity @s Offers.Recipes[5].buyB.tag set value {BlockEntityTag:{Patterns:[{Color:9,Pattern:"mr"},{Color:8,Pattern:"bs"},{Color:7,Pattern:"cs"},{Color:8,Pattern:"bo"},{Color:15,Pattern:"ms"},{Color:8,Pattern:"hh"},{Color:8,Pattern:"mc"},{Color:15,Pattern:"bo"}],id:"minecraft:banner"},HideFlags:32,display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}

scoreboard players operation @s lgp.villagerData = @s player.air