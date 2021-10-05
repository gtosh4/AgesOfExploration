
execute at @e[type=blaze,tag=cc.dp.boss] run particle minecraft:sweep_attack ~ ~0.2 ~ 0.1 0.2 0.1 0.2 1
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run playsound minecraft:item.trident.riptide_3 hostile @s ~ ~ ~ 1 0.8

execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] if entity @e[type=ocelot,tag=cc.dp.mount,distance=..2] run function dpyramid:battle/p2/camp/start

execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] unless entity @e[type=ocelot,tag=cc.dp.mount,distance=..2] run schedule function dpyramid:battle/p2/camp/init_loop 1t

