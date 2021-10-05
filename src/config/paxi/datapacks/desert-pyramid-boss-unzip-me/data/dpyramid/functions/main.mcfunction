# main_1t
# Desert Pyramid Miniboss
# by Chan Caleb 
# 



execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{cc.dp.cb:1,ChargedProjectiles:[{id:"minecraft:arrow"},{},{}],Charged:1b}}}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"Dymarip\'s Flame","color":"aqua","italic":false}'},RepairCost:9999999,Unbreakable:1b,cc.dp.cb:2,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:2,UUID:[I;0,5138282,0,2432930],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:2,UUID:[I;0,5438111,0,3903061],Slot:"offhand"}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:300}],Potion:"minecraft:thick",CustomPotionColor:16746511}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:200}],Potion:"minecraft:thick",CustomPotionColor:16746511}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:200}],Potion:"minecraft:thick",CustomPotionColor:16746511}}],Charged:1b} 1

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{cc.dp.cb:1,ChargedProjectiles:[{id:"minecraft:arrow"},{},{}],Charged:1b}}]}] run replaceitem entity @s weapon.offhand crossbow{display:{Name:'{"text":"Dymarip\'s Flame","color":"aqua","italic":false}'},RepairCost:9999999,Unbreakable:1b,cc.dp.cb:2,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:2,UUID:[I;0,5138282,0,2432930],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:2,UUID:[I;0,5438111,0,3903061],Slot:"offhand"}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:300}],Potion:"minecraft:thick",CustomPotionColor:16746511}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:200}],Potion:"minecraft:thick",CustomPotionColor:16746511}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:17b,Amplifier:1b,Duration:200}],Potion:"minecraft:thick",CustomPotionColor:16746511}}],Charged:1b} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{cc.dp.cb:2,Charged:0b}}}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"Dymarip\'s Flame","color":"aqua","italic":false}'},RepairCost:9999999,Unbreakable:1b,cc.dp.cb:1,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:2,UUID:[I;0,5138282,0,2432930],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:2,UUID:[I;-1,-727016,-1,-6850548],Slot:"offhand"}]} 1


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{cc.dp.cb:2,Charged:0b}}]}] run replaceitem entity @s weapon.offhand crossbow{display:{Name:'{"text":"Dymarip\'s Flame","color":"aqua","italic":false}'},RepairCost:9999999,Unbreakable:1b,cc.dp.cb:1,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:2,UUIDLeast:2432930,UUIDMost:5138282,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:2,UUIDLeast:-6850548,UUIDMost:-727016,Slot:"offhand"}]} 1



# arrow
execute as @e[type=arrow,nbt={Color:16746511}] unless predicate dpyramid:on_fire run data merge entity @s {Fire:20s,damage:2.5,pickup:2b}

