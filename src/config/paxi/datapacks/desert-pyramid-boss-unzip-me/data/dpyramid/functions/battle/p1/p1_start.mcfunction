
tag @s add cc.dp.active

bossbar set dpyramid:cc.dp.healthbar max 200
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 run bossbar set dpyramid:cc.dp.healthbar players @a[dx=17,dy=10,dz=17]

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.3f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:19999980,DurationOnUse:0f,Color:12354303,Tags:["cc.dp.mob"]}
playsound minecraft:block.end_portal.spawn hostile @a[distance=..15] ~ ~ ~ 3 1.2 
playsound minecraft:entity.wither.spawn hostile @a[distance=..15] ~ ~ ~ 10 0.5

summon blaze ~ ~5.5 ~ {Silent:1b,DeathLootTable:"dpyramid:null",PersistenceRequired:1b,Health:2f,Tags:["cc.dp.boss","cc.dp.phase1","cc.dp.mob"],CustomName:'{"text":"Dymarip"}',HandItems:[{id:'minecraft:totem_of_undying',Count:1b},{}],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:10s}]}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],ActiveEffects:[{Id:10b,Amplifier:6b,Duration:200,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:200,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:1}]}

summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~


execute at @s[tag=cc.dp.north] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:active",posX:-10,posY:-2,posZ:-10,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
 
execute at @s[tag=cc.dp.south] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:active",posX:10,posY:-2,posZ:10,rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.east] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:active",posX:10,posY:-2,posZ:-10,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

execute at @s[tag=cc.dp.west] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:active",posX:-10,posY:-2,posZ:10,rotation:"COUNTERCLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

setblock ~ ~-2 ~ redstone_block



# advancement
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,gamemode=adventure] run advancement grant @s only dpyramid:adventure/summon


# reset scoreboards: damage taken and mob count
# (dummy dmg taken value that is neutral)
#scoreboard players set @a cc.dp.dmgtaken 2000
#scoreboard players set @s cc.dp.mobcap 5


scoreboard players set healthperdec cc.dp.health 10
scoreboard players set spawnlimit cc.dp.mobcap 5
schedule function dpyramid:battle/p1/p1_spawn_minions 150t


function dpyramid:battle/main_loop



function dpyramid:battle/p1/p1_loop
schedule function dpyramid:battle/p1/p1_loop-100t 200t
#function dpyramid:battle/p1/p1_loop-1000t

