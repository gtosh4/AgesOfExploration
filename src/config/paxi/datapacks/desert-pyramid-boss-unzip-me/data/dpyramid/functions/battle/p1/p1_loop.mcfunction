
# keep blaze at top
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @e[type=blaze,tag=cc.dp.boss,limit=1,distance=..10] ~ ~5.8 ~

# play fire sound if boss is on fire
execute as @e[type=blaze,tag=cc.dp.boss] if predicate dpyramid:on_fire at @s run playsound minecraft:block.fire.ambient hostile @a[distance=..10] ~ ~ ~ 20 1


# douse center if mobcap is managed
### idea: if there are n+1 potential mobs?
#execute if score potentialmobs cc.dp.mobcap matches ..3 at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/douse_center

#execute if score count cc.dp.mobcap >= limit cc.dp.mobcap as @e[type=blaze,tag=cc.dp.boss] if predicate dpyramid:on_fire at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/light_center

# fireballs
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @e[type=small_fireball,tag=!cc.dp.firefang,distance=..11] positioned ~-9 ~-2 ~-9 at @a[dx=17,dy=6,dz=17,gamemode=adventure] run function dpyramid:battle/p1/fireball_sound



# break loop if peaceful switch
execute unless entity @e[type=blaze,tag=cc.dp.boss] as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/reset



# test for end of phase 1
execute unless entity @e[type=blaze,tag=cc.dp.boss,tag=cc.dp.phase1,limit=1,nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b},{}]}] as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/p2/p2_start

# break loop if dead
execute if entity @e[type=blaze,tag=cc.dp.boss,tag=cc.dp.phase1,limit=1,nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b},{}]}] run schedule function dpyramid:battle/p1/p1_loop 1t

# break loop if peaceful switch
execute unless entity @e[type=blaze,tag=cc.dp.boss] as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/reset



effect clear @e[tag=cc.dp.boss] minecraft:glowing


##execute at @e[tag=cc.dp.boss] run setblock ~ ~ ~ minecraft:fire[age=15] keep