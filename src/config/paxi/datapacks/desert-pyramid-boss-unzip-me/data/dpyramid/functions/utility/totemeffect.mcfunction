effect give @a[tag=cc.dp.usedtotem] minecraft:regeneration 30 3
effect give @a[tag=cc.dp.usedtotem] minecraft:saturation 15 2
effect give @a[tag=cc.dp.usedtotem] minecraft:absorption 15 2
effect give @a[tag=cc.dp.usedtotem] minecraft:fire_resistance 30 0
effect give @a[tag=cc.dp.usedtotem] minecraft:resistance 5 3
effect give @a[tag=cc.dp.usedtotem] minecraft:slowness 5 3

# would be cool if the totem does a splash healing on crowding zombies
#execute at @a[tag=cc.dp.usedtotem] run summon potion ~ ~ ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:6b,Amplifier:2b,Duration:1}]}}}

tag @a[tag=cc.dp.usedtotem] remove cc.dp.usedtotem
