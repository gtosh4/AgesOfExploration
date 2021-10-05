execute if score healthperdec cc.dp.health matches 9..10 run function dpyramid:battle/p1/10
execute if score healthperdec cc.dp.health matches 7..8 run function dpyramid:battle/p1/30
execute if score healthperdec cc.dp.health matches 5..6 run function dpyramid:battle/p1/50
execute if score healthperdec cc.dp.health matches 3..4 run function dpyramid:battle/p1/70
execute if score healthperdec cc.dp.health matches 0..2 run function dpyramid:battle/p1/100

particle minecraft:effect ~ ~6 ~ 0.7 0.2 0.7 1 60