scoreboard players add #elderGuardian.totalDeathCount lgp.elderGuardian 1

execute if score #elderGuardian.totalDeathCount lgp.elderGuardian matches 3.. if score #elderGuardian.type1.totalCount lgp.elderGuardian matches 1.. if score #elderGuardian.type2.totalCount lgp.elderGuardian matches 1.. if score #elderGuardian.type3.totalCount lgp.elderGuardian matches 1.. run function lgp:entities/boss/elder_guardian/obj_external/player/kill/all

advancement revoke @s only lgp:_functions/boss/elder_guardian/obj_external/player/kill/one