

schedule clear dpyramid:battle/p1/p1_loop
schedule clear dpyramid:battle/p1/p1_loop-100t

kill @e[tag=cc.dp.minion]
tp @e[type=blaze,tag=cc.dp.boss,tag=cc.dp.phase1,limit=1] ~100 ~-200 ~

bossbar set dpyramid:cc.dp.healthbar max 100
playsound minecraft:block.end_portal.spawn hostile @a[distance=..15] ~ ~ ~ 3 1.2 
playsound minecraft:entity.wither.spawn hostile @a[distance=..15] ~ ~ ~ 10 0.5
summon minecraft:area_effect_cloud ~ ~6.5 ~ {Particle:"totem_of_undying",Radius:2f,Duration:15,Tags:["cc.dp.mob"]}
particle minecraft:poof ~ ~6 ~ 0.05 0.3 0.05 0.07 130

# tp players who are trapped in crypts when barriers come up
execute at @e[type=minecraft:area_effect_cloud,tag=cc.dp.crypt] as @a[distance=..1.5] at @e[type=minecraft:armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run tp @s ~ ~1 ~


summon ocelot ~ ~5.5 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"dpyramid:null",Age:-19999980,AgeLocked:1b,Tags:["cc.dp.mob","cc.dp.mount","cc.dp.p2"],Passengers:[{id:"minecraft:blaze",Silent:1b,DeathLootTable:"dpyramid:null",Health:1f,Tags:["cc.dp.mob","cc.dp.boss","cc.dp.p2"],CustomName:'{"text":"Dymarip"}',HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:4s},{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1,-1739817,-1,-8917891],Slot:"mainhand"}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:9s}],AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:10,Operation:0,UUID:[I;0,7017601,0,2536938],Slot:"chest"}]}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],ActiveEffects:[{Id:10b,Amplifier:6b,Duration:120,ShowParticles:0b},{Id:11b,Amplifier:5b,Duration:120,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100}]}],ActiveEffects:[{Id:14b,Amplifier:200b,Duration:19999980,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:120,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0}]}

summon chicken ~ ~3 ~ {Silent:1b,DeathLootTable:"dpyramid:null",NoAI:1b,Health:999999f,EggLayTime:1999980,Tags:["cc.dp.mob","cc.dp.chicken","cc.dp.p2"],ArmorItems:[{id:'minecraft:diamond_boots',Count:1b},{id:'minecraft:diamond_leggings',Count:1b},{id:'minecraft:diamond_chestplate',Count:1b},{id:'minecraft:diamond_helmet',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:200b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999999},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor,Base:30},{Name:generic.armor_toughness,Base:100}]}


execute positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,limit=3,gamemode=adventure] run summon bat ~ ~-3 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"dpyramid:null",PersistenceRequired:1b,NoAI:1b,Tags:["cc.dp.mob","cc.dp.p2"],Passengers:[{id:"minecraft:evoker",NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"dpyramid:null",PersistenceRequired:1b,NoAI:1b,Tags:["cc.dp.mob","cc.dp.evoker","cc.dp.p2"],CustomName:'{"text":"Dymarip"}',ActiveEffects:[{Id:14b,Amplifier:200b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}],CustomName:'{"text":"Dymarip"}',ActiveEffects:[{Id:14b,Amplifier:200b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}




# summon 8 dummy vexes underground so that the evoker is at mobcap and always does fang attack

summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}

summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}
summon minecraft:vex ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["cc.dp.mob"]}




execute as @e[limit=1,type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/p2/p2_barrier

function dpyramid:battle/p2/p2_loop
function dpyramid:battle/p2/p2_loop-100t


schedule function dpyramid:battle/p2/camp/start 100t