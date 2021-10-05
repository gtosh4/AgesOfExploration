
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @e[type=ocelot,tag=cc.dp.mount] ~ ~0.12 ~
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @e[type=blaze,tag=cc.dp.boss] ~ ~0.47 ~

execute as @e[type=blaze,tag=cc.dp.boss] if predicate dpyramid:on_fire at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/douse_center
execute as @e[type=blaze,tag=cc.dp.boss] unless predicate dpyramid:on_fire at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/light_center


# visual cue @ spellticks = 20?
execute at @e[type=evoker,tag=cc.dp.evoker,nbt={SpellTicks:33}] run particle minecraft:effect ~ ~ ~ 0.7 0.2 0.7 0.5 60
execute at @e[type=evoker,tag=cc.dp.evoker,nbt={SpellTicks:33}] as @a[distance=..15] run playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..15] ~ ~-2 ~ 20 0.7

schedule function dpyramid:battle/p2/camp/loop 1t