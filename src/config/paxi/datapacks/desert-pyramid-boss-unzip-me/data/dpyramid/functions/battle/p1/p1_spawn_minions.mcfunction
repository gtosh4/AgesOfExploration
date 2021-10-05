
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..15] ~ ~ ~ 3 0.7

# pseudorandom number 
scoreboard players add rng cc.dp.mobcap 1
execute if score rng cc.dp.mobcap matches 5.. run scoreboard players remove rng cc.dp.mobcap 5

# for sure spawn if at max
execute if predicate dpyramid:25_percent run function dpyramid:battle/p1/p1_spawn_one
execute unless score spawnlimit cc.dp.mobcap = potentialmobs cc.dp.mobcap if predicate dpyramid:50_percent run function dpyramid:battle/p1/p1_spawn_one

# repeat while spawnlimit counter >= 1
scoreboard players remove spawnlimit cc.dp.mobcap 1
execute if score spawnlimit cc.dp.mobcap matches 1.. run function dpyramid:battle/p1/p1_spawn_minions 