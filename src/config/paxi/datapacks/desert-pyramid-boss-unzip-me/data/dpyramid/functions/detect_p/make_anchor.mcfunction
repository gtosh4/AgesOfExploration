fill ~-11 ~-3 ~-11 ~11 ~ ~11 sand replace #dpyramid:desert_partial
fill ~-12 ~-3 ~-12 ~12 ~-1 ~12 sand replace #dpyramid:desert_partial


# clear treasure pit
fill ~-2 ~-1 ~-2 ~2 ~-16 ~2 sandstone replace
execute positioned ~ ~-11 ~ run kill @e[type=item,distance=..4]

# summon a centered armor stand
summon item_frame ~ ~ ~ {Tags:["cc.dp.anchor_f"],Item:{}}
execute at @e[type=item_frame,limit=1,tag=cc.dp.anchor_f,sort=nearest] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cc.dp.anchor","cc.dp.v1"],Item:{}}
kill @e[type=item_frame,limit=1,tag=cc.dp.anchor_f,sort=nearest]


execute if block ~ ~5 ~-10 minecraft:chiseled_sandstone as @e[type=armor_stand,tag=cc.dp.anchor,limit=1,sort=nearest] at @s run function dpyramid:detect_p/anchor_n
execute if block ~-10 ~5 ~ minecraft:chiseled_sandstone as @e[type=armor_stand,tag=cc.dp.anchor,limit=1,sort=nearest] at @s run function dpyramid:detect_p/anchor_w
execute if block ~ ~5 ~10 minecraft:chiseled_sandstone as @e[type=armor_stand,tag=cc.dp.anchor,limit=1,sort=nearest] at @s run function dpyramid:detect_p/anchor_s
execute if block ~10 ~5 ~ minecraft:chiseled_sandstone as @e[type=armor_stand,tag=cc.dp.anchor,limit=1,sort=nearest] at @s run function dpyramid:detect_p/anchor_e


execute if predicate dpyramid:50_percent run replaceitem block ~10 ~-3 ~7 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~7 ~-3 ~10 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-10 ~-3 ~7 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~7 ~-3 ~-10 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~10 ~-3 ~-7 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-7 ~-3 ~10 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-10 ~-3 ~-7 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
execute if predicate dpyramid:50_percent run replaceitem block ~-7 ~-3 ~-10 container.4 lingering_potion{display:{Name:'{"text":"Lingering Potion of Poison","italic":false}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:240}],CustomPotionColor:2004025} 1
