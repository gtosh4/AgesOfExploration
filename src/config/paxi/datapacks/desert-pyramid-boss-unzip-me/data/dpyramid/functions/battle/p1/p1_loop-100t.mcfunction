

# ambience
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 2 0.1

execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run setblock ~ ~1 ~ air
execute as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] run function dpyramid:battle/p1/trapdoor


# every 5 seconds
scoreboard players operation healthperdec cc.dp.health = @e[tag=cc.dp.boss] cc.dp.health
scoreboard players operation healthperdec cc.dp.health /= $20 cc.dp.health

# increase mob cap if boss is low on health @@ changed from 3 to 2
scoreboard players set limit cc.dp.mobcap 2
execute if score healthperdec cc.dp.health matches 4..7 at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,gamemode=adventure] run scoreboard players add limit cc.dp.mobcap 1
execute if score healthperdec cc.dp.health matches 0..3 at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,gamemode=adventure] run scoreboard players add limit cc.dp.mobcap 2



# get player count and offset spawnlimit
execute as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s positioned ~-9 ~-2 ~-9 store result score playercount cc.dp.mobcap if entity @a[dx=17,dy=6,dz=17,gamemode=adventure]
# cap one spawn herd
execute if score playercount cc.dp.mobcap matches 4.. run scoreboard players set playercount cc.dp.mobcap 3

scoreboard players operation limit cc.dp.mobcap += playercount cc.dp.mobcap



# cap at 10 mobs
execute if score limit cc.dp.mobcap matches 11.. run scoreboard players set limit cc.dp.mobcap 10

scoreboard players operation spawnlimit cc.dp.mobcap = limit cc.dp.mobcap






# get the no. of current mobs
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] store result score count cc.dp.mobcap run execute if entity @e[distance=..15,tag=cc.dp.minion]

# get the difference, limit of new mobs that can be spawned
scoreboard players operation spawnlimit cc.dp.mobcap -= count cc.dp.mobcap 








# cap every spawning cycle spawns a pack of [0..3/4/5]
execute if score spawnlimit cc.dp.mobcap matches ..-1 run scoreboard players set spawnlimit cc.dp.mobcap 0
execute if score playercount cc.dp.mobcap matches 1 if score spawnlimit cc.dp.mobcap matches 4.. run scoreboard players set spawnlimit cc.dp.mobcap 3
execute if score playercount cc.dp.mobcap matches 2 if score spawnlimit cc.dp.mobcap matches 5.. run scoreboard players set spawnlimit cc.dp.mobcap 4
execute if score playercount cc.dp.mobcap matches 3 if score spawnlimit cc.dp.mobcap matches 6.. run scoreboard players set spawnlimit cc.dp.mobcap 5


scoreboard players operation potentialmobs cc.dp.mobcap = spawnlimit cc.dp.mobcap



# psuedorandom number that just increases
scoreboard players add rng cc.dp.mobcap 2
execute if score rng cc.dp.mobcap matches 5.. run scoreboard players remove rng cc.dp.mobcap 5


# force spawning depending on no of players, if not at mobcap
#execute unless score count cc.dp.mobcap = limit cc.dp.mobcap if score playercount cc.dp.mobcap matches 1..3 run function dpyramid:battle/p1/p1_spawn_one
#execute unless score count cc.dp.mobcap = limit cc.dp.mobcap if score playercount cc.dp.mobcap matches 2..3 run function dpyramid:battle/p1/p1_spawn_one
#execute unless score count cc.dp.mobcap = limit cc.dp.mobcap if score playercount cc.dp.mobcap matches 3 run function dpyramid:battle/p1/p1_spawn_one

# if positive number, spawn them in
execute if score spawnlimit cc.dp.mobcap matches 1.. as @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] at @s run function dpyramid:battle/p1/p1_spawn_minions
###  if predicate dpyramid:25_percent 






schedule function dpyramid:battle/p1/p1_loop-100t 120t