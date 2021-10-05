
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run stopsound @s ambient minecraft:ambient.cave

schedule clear dpyramid:battle/p2/camp/init
schedule clear dpyramid:battle/p2/camp/init_loop
schedule clear dpyramid:battle/p2/camp/loop
schedule clear dpyramid:battle/p2/camp/loop-25t
schedule clear dpyramid:battle/p2/camp/start

schedule clear dpyramid:battle/evoker_fang
schedule clear dpyramid:battle/p2/flee/start
schedule clear dpyramid:battle/p2/flee/loop

schedule clear dpyramid:battle/p2/p2_loop
schedule clear dpyramid:battle/p2/p2_loop-100t
schedule clear dpyramid:battle/main_loop-25t

schedule clear dpyramid:battle/main_loop
schedule clear dpyramid:battle/p1/p1_loop-100t

bossbar set dpyramid:cc.dp.healthbar players

# reset structure
execute at @s[tag=cc.dp.north] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:-10,posY:-3,posZ:-10,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
 
execute at @s[tag=cc.dp.south] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:10,posY:-3,posZ:10,rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.east] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:10,posY:-3,posZ:-10,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.west] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:-10,posY:-3,posZ:10,rotation:"COUNTERCLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

setblock ~ ~-2 ~ redstone_block


# kill cc.dp.mob
tp @e[tag=cc.dp.mob,distance=..20] ~ ~-300 ~

# remove active tag
tag @s remove cc.dp.active