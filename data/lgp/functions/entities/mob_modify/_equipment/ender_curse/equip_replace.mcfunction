
#盔甲
$loot replace entity @s[predicate=!lgp:entities/mob_modify/is_pillager_captain] armor.head loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/helmets
$loot replace entity @s armor.chest loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/chestplates
$loot replace entity @s armor.legs loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/leggings
$loot replace entity @s armor.feet loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/boots

#武器
$loot replace entity @s[type=#lgp:holding_weapon/axes] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/axes
$loot replace entity @s[type=#lgp:holding_weapon/bow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/bow
$loot replace entity @s[type=#lgp:holding_weapon/sword] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/swords

$loot replace entity @s[type=#lgp:holding_weapon/crossbow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/crossbow
$loot replace entity @s[type=#lgp:holding_weapon/trident] weapon.mainhand loot lgp:entities/mob_modify/_equipment/ender_curse/$(currentEnderCurseLv)/trident

tag @s add lgp.equip.modified