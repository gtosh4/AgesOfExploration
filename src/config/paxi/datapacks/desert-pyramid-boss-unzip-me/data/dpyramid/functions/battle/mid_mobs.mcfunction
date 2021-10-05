

effect give @s[type=#dpyramid:undead] poison 1 2

effect give @s[type=!#dpyramid:undead] regeneration 1 2

effect give @s resistance 1 0

effect give @s speed 2 0

effect give @s[type=minecraft:player,nbt={foodSaturationLevel:0f}] saturation 2 0

execute if entity @s[type=player] if predicate dpyramid:on_fire run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace fire
execute if entity @s[type=player] if predicate dpyramid:on_fire run setblock ~ ~ ~ water[level=1]
