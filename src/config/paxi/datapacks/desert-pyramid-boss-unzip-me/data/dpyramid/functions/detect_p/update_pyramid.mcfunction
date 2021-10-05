

# reset the pyramid
execute if entity @s[tag=cc.dp.active] run function dpyramid:detect_p/soft_reset

# ready the pyramid
execute if entity @s[tag=cc.dp.cooldown] run tag @s remove cc.dp.cooldown


# remove all possible old tags
#tag @s remove cc.dp.

# add latest tag
tag @s add cc.dp.v1




execute at @s[tag=cc.dp.north] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reinit",posX:-10,posY:-3,posZ:-10,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
 
execute at @s[tag=cc.dp.south] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reinit",posX:10,posY:-3,posZ:10,rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.east] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reinit",posX:10,posY:-3,posZ:-10,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.west] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reinit",posX:-10,posY:-3,posZ:10,rotation:"COUNTERCLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

setblock ~ ~-2 ~ redstone_block


execute if predicate dpyramid:50_percent run replaceitem block ~10 ~-3 ~7 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~7 ~-3 ~10 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-10 ~-3 ~7 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~7 ~-3 ~-10 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~10 ~-3 ~-7 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-7 ~-3 ~10 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-10 ~-3 ~-7 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-7 ~-3 ~-10 container.4 lingering_potion{Potion:"minecraft:long_poison"} 1

# kill treasure loot at edges of pyramid, except for loot in middle
execute positioned ~-12 ~-5 ~-12 run kill @e[type=item,dx=22,dy=15,dz=22,distance=5..]