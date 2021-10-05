

# clear fire animation for chicken and evoker entities if they are on fire
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @e[type=!minecraft:blaze,tag=cc.dp.p2] if predicate dpyramid:on_fire run data modify entity @s Fire set value -20

# play fire sound if boss is on fire
execute as @e[type=blaze,tag=cc.dp.boss] if predicate dpyramid:on_fire at @s run playsound minecraft:block.fire.ambient hostile @a[distance=..10] ~ ~ ~ 15 1


# test for end
execute if entity @e[type=minecraft:evoker,tag=cc.dp.evoker] unless entity @e[type=blaze,tag=cc.dp.boss] as @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/win
execute if entity @e[type=minecraft:evoker,tag=cc.dp.evoker] if entity @e[type=blaze,tag=cc.dp.boss] run schedule function dpyramid:battle/p2/p2_loop 1t


# break loop if peaceful switch
execute unless entity @e[type=minecraft:evoker,tag=cc.dp.evoker] unless entity @e[type=blaze,tag=cc.dp.boss] as @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/reset

execute at @e[limit=1,type=minecraft:armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @e[type=minecraft:evoker_fangs,distance=..10,nbt={Warmup:-5}] run summon area_effect_cloud ~ ~0.5 ~ {Particle:"dust 0.5 0.2 1.3",Radius:1.0f,Duration:5,DurationOnUse:0f,WaitTime:2,Tags:["cc.dp.fang"],Effects:[{Id:17b,Amplifier:1b,Duration:200}]}


# fireballs + fang
execute at @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @e[type=small_fireball,tag=!cc.dp.firefang,distance=..11] positioned ~-9 ~-2 ~-9 at @a[dx=17,dy=6,dz=17,gamemode=adventure] run function dpyramid:battle/p2/evoker_fang



# clear unwanted effects
effect clear @e[tag=cc.dp.p2] minecraft:glowing


# peaceful mode check
#execute unless entity @e[type=minecraft:evoker,tag=cc.dp.evoker] run reset