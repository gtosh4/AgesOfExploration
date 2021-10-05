
#say flee start!

schedule clear dpyramid:battle/p2/camp/loop

execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/douse_center

execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 12 0.001

# change stats of ocelot
execute as @e[type=ocelot,tag=cc.dp.mount] run data modify entity @s Trusting set value 0b
execute as @e[type=ocelot,tag=cc.dp.mount] run data modify entity @s Attributes[0].Base set value 0.3

# evoker NoAI
execute as @e[type=evoker,tag=cc.dp.evoker,limit=1] run data modify entity @s NoAI set value 1b
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @e[type=bat,tag=cc.dp.mob] ~ ~-3 ~

function dpyramid:battle/p2/flee/loop


schedule clear dpyramid:battle/p2/camp/loop-25t


schedule function dpyramid:battle/p2/camp/init 400t