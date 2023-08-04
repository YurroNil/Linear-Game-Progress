execute store result score #slimeking.totalCount lgp.slimeKing if entity @e[distance=..128,predicate=lgp:entities/boss/is_slimeking_type]

execute if score #slimeking.totalCount lgp.slimeKing matches 80.. run function lgp:entities/boss/slimeking/obj_external/player/kill/all

advancement revoke @s only lgp:_functions/boss/slimeking/obj_external/player/kill/one_slimeking_type
