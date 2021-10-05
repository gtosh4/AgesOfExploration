# ambience
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 0.1

schedule function dpyramid:battle/p2/p2_loop-100t 100t