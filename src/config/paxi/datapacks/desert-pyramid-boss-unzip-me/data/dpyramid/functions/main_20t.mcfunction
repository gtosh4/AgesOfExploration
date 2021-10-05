# main_20t
# Desert Pyramid Miniboss
# by Chan Caleb 
# 



#execute at @p[predicate=dpyramid:in_pyramid] run summon area_effect_cloud ~ 64 ~ {Particle:"cloud",Radius:1f,Duration:1}

#give @p[predicate=dpyramid:in_pyramid] stone 1

#execute at @p run summon area_effect_cloud ~ 64 ~ {Particle:"cloud",Radius:1f,Duration:1}



# update vanilla pyramids to custom pyramids
execute at @a[predicate=dpyramid:in_desert] positioned ~-35 64 ~-35 unless entity @e[type=minecraft:armor_stand,tag=cc.dp.anchor,limit=1,dx=68,dy=0,dz=68] positioned ~35 64 ~35 run function dpyramid:detect_p/prox-20t
execute at @a[predicate=dpyramid:in_pyramid] positioned ~-20 64 ~-20 unless entity @e[type=minecraft:armor_stand,tag=cc.dp.anchor,limit=1,dx=20,dy=0,dz=20] positioned ~20 64 ~20 run function dpyramid:detect_p/markers


# update old pyramids to new pyramids
execute at @a[predicate=dpyramid:in_desert] positioned ~-35 64 ~-35 as @e[type=minecraft:armor_stand,tag=cc.dp.anchor,tag=!cc.dp.v1,limit=1,dx=68,dy=0,dz=68,sort=nearest] at @s run function dpyramid:detect_p/update_pyramid




# Triggering boss fight
execute unless entity @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @e[type=armor_stand,tag=cc.dp.anchor,tag=!cc.dp.active,tag=!cc.dp.cooldown,limit=1,sort=random] at @s if block ~1 ~1 ~1 fire if block ~1 ~1 ~-1 fire if block ~-1 ~1 ~-1 fire if block ~-1 ~1 ~1 fire if block ~2 ~1 ~ fire if block ~3 ~1 ~ fire if block ~-2 ~1 ~ fire if block ~-3 ~1 ~ fire if block ~ ~1 ~2 fire if block ~ ~1 ~3 fire if block ~ ~1 ~-2 fire if block ~ ~1 ~-3 fire run function dpyramid:battle/p1/p1_start



# protect pyramid from destruction >> Particles??
execute at @e[type=armor_stand,tag=cc.dp.anchor] positioned ~-16 ~-8 ~-16 as @e[type=creeper,dx=31,dy=21,dz=31] run data modify entity @s ExplosionRadius set value 0b
execute at @e[type=armor_stand,tag=cc.dp.anchor] as @e[type=#dpyramid:explosives,distance=..25] run kill @s



# adventure mode ## to move to main_1t?
tag @a[tag=cc.dp.prox,gamemode=creative] remove cc.dp.prox
tag @a[tag=cc.dp.prox,gamemode=spectator] remove cc.dp.prox
execute at @e[type=armor_stand,tag=cc.dp.anchor] positioned ~-16 ~-11 ~-16 as @a[gamemode=survival,dx=31,dy=22,dz=31] run function dpyramid:utility/to_adventure
execute at @e[type=armor_stand,tag=cc.dp.anchor] positioned ~-19 ~-14 ~-19 as @a[tag=!cc.dp.prox,gamemode=survival,dx=37,dy=26,dz=37] run function dpyramid:utility/to_fatigue
execute as @a[tag=cc.dp.prox] at @s positioned ~-21 ~-16 ~-21 unless entity @e[type=armor_stand,tag=cc.dp.anchor,dx=41,dy=30,dz=41] at @s run function dpyramid:utility/to_survival



#execute at @e[type=armor_stand,tag=cc.dp.anchor] positioned ~ ~5 ~ as @a[gamemode=adventure,distance=25..] run function dpyramid:utility/to_survival



# cooldown
execute as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.cooldown] run scoreboard players add @s cc.dp.cooldown 1
execute as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.cooldown,scores={cc.dp.cooldown=12000..}] at @s run function dpyramid:battle/ready







schedule function dpyramid:main_20t 20t