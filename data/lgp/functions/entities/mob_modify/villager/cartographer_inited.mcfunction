#modify

    data modify entity @s Offers.Recipes[2].buy.id set value "minecraft:rotten_flesh"
    data modify entity @s Offers.Recipes[2].sell.id set value "minecraft:leather"
    data modify entity @s Offers.Recipes[2].sell.Count set value 1b
    
    data modify entity @s Offers.Recipes[3].buyB.id set value "minecraft:prismarine_shard"

    #设置灾厄旗帜
    data modify entity @s Offers.Recipes[4].buyB.id set value "minecraft:white_banner"
    data modify entity @s Offers.Recipes[4].buyB.Count set value 7
    data modify entity @s Offers.Recipes[4].buyB.tag set value {HideFlags:32,BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}],id:"minecraft:banner"},display:{Name:'{"translate":"block.minecraft.ominous_banner","color":"gold"}'}}

scoreboard players operation @s lgp.villagerData = @s lgp.villagerLevel