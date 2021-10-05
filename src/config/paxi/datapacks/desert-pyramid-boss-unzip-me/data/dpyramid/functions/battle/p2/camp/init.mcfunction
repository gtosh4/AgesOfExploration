



schedule clear dpyramid:battle/p2/flee/loop


# change stats of ocelot
execute as @e[type=ocelot,tag=cc.dp.mount] run data modify entity @s Trusting set value 1b
execute as @e[type=ocelot,tag=cc.dp.mount] run data modify entity @s Attributes[0].Base set value 0.6



function dpyramid:battle/p2/camp/init_loop
schedule function dpyramid:battle/p2/camp/start 3s