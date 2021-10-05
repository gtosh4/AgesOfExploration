# change speed based on if about to fire
execute as @e[type=blaze,tag=cc.dp.boss,tag=!cc.dp.onfire] if predicate dpyramid:on_fire run function dpyramid:battle/p2/flee/to_on
execute as @e[type=blaze,tag=cc.dp.boss,tag=cc.dp.onfire] unless predicate dpyramid:on_fire at @s run function dpyramid:battle/p2/flee/to_off






schedule function dpyramid:battle/p2/flee/loop 1t