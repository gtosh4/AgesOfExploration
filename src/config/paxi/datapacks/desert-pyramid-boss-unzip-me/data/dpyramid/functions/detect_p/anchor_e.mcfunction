
tag @s add cc.dp.east
#say init east

# 
#	Init Structure
#

setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reinit",posX:10,posY:-3,posZ:-10,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

# trigger structure
setblock ~1 ~-1 ~ redstone_block

