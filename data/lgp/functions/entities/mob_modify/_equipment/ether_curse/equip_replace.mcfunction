
#盔甲
$loot replace entity @s[predicate=!lgp:entities/mob_modify/is_pillager_captain] armor.head loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/helmets
$loot replace entity @s armor.chest loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/chestplates
$loot replace entity @s armor.legs loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/leggings
$loot replace entity @s armor.feet loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/boots

#武器
$loot replace entity @s[type=#lgp:holding_weapon/axes] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/axes
$loot replace entity @s[type=#lgp:holding_weapon/bow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/bow
$loot replace entity @s[type=#lgp:holding_weapon/sword] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/swords

$loot replace entity @s[type=#lgp:holding_weapon/crossbow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/crossbow
$loot replace entity @s[type=#lgp:holding_weapon/trident] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ether_curse/$(currentEtherCurseLv)/trident

tag @s add lgp.equip.modified