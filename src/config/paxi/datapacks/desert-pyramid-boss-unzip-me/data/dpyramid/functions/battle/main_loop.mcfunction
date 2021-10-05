


# health bar
execute as @e[type=blaze,tag=cc.dp.boss,limit=1] store result score @s cc.dp.health run data get entity @s Health 1
execute store result bossbar dpyramid:cc.dp.healthbar value run scoreboard players get @e[type=blaze,tag=cc.dp.boss,limit=1] cc.dp.health

execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] if entity @p[distance=..12] run bossbar set dpyramid:cc.dp.healthbar visible true 
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] unless entity @p[distance=..15] run bossbar set dpyramid:cc.dp.healthbar visible false 


# clear fire resist
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,gamemode=adventure] run effect clear @s fire_resistance


# hurt particles and sound
execute at @e[type=blaze,tag=cc.dp.boss,nbt={HurtTime:10s}] run particle minecraft:damage_indicator ~ ~ ~ 0.3 0.2 0.3 0.5 20
execute at @e[type=blaze,tag=cc.dp.boss,limit=1,nbt={HurtTime:10s}] run playsound minecraft:entity.wither.hurt hostile @a[distance=..10] ~ ~ ~ 0.5 1.4






# check for all dead players to terminate the fight
execute as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s positioned ~-9 ~-2 ~-9 unless entity @p[dx=17,dy=6,dz=17,limit=1,gamemode=adventure] positioned ~9 ~2 ~9 run function dpyramid:battle/reset


# let in respawned players?

# healing
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~ ~0.5 ~ as @e[type=#dpyramid:buff,distance=..1.8,tag=!cc.dp.p2] run function dpyramid:battle/mid_mobs

schedule function dpyramid:battle/main_loop 1t