
schedule clear dpyramid:battle/p2/camp/start
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run playsound minecraft:block.beacon.power_select hostile @s ~ ~ ~ 10 0.01

# evoker NoAI
execute as @e[type=evoker,tag=cc.dp.evoker,limit=1] run data modify entity @s NoAI set value 0b
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @e[type=bat,tag=cc.dp.mob] ~ ~2 ~

# light center if on fire
#execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/light_center

#say camp start!

schedule clear dpyramid:battle/p2/camp/init_loop
function dpyramid:battle/p2/camp/loop


# potion effects
function dpyramid:battle/p2/camp/loop-25t


# schedule fleeing in 250t anyways
schedule function dpyramid:battle/p2/flee/start 250t