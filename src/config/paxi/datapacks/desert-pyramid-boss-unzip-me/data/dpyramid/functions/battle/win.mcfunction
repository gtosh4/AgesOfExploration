

# death particle at ocelot
execute at @e[type=ocelot,tag=cc.dp.mount] run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 200

#execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] as @a[distance=..15] run stopsound @s ambient minecraft:ambient.cave
playsound minecraft:entity.wither.death hostile @a[distance=..15] ~ ~ ~ 10 0.8
playsound minecraft:ui.toast.challenge_complete hostile @a[distance=..15] ~ ~ ~ 2 1

schedule clear dpyramid:battle/p2/camp/init
schedule clear dpyramid:battle/p2/camp/init_loop
schedule clear dpyramid:battle/p2/camp/loop
schedule clear dpyramid:battle/p2/camp/loop-25t
schedule clear dpyramid:battle/p2/camp/start

schedule clear dpyramid:battle/evoker_fang
schedule clear dpyramid:battle/p2/flee/start
schedule clear dpyramid:battle/p2/flee/loop

schedule clear dpyramid:battle/p2/p2_loop
schedule clear dpyramid:battle/p2/p2_loop-100t
schedule clear dpyramid:battle/main_loop-25t

schedule clear dpyramid:battle/main_loop


bossbar set dpyramid:cc.dp.healthbar players


summon minecraft:firework_rocket ~ ~0.1 ~ {Life:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680],FadeColors:[I;16769838]}]}}}}

#execute if predicate dpyramid:25_percent run summon item ~ ~6 ~ {PickupDelay:50,Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Dymarip\'s Flame","color":"aqua","italic":false}'},RepairCost:9999999,Unbreakable:1b,cc.dp.cb:1,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:2,UUIDLeast:2432930,UUIDMost:5138282,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:2,UUIDLeast:3903061,UUIDMost:5438111,Slot:"offhand"}]}}}

# changed to 100% drop rate
loot spawn ~ ~1 ~ loot dpyramid:cb

execute if predicate dpyramid:50_percent run summon item ~ ~6 ~ {PickupDelay:50,Tags:["cc.dp.usedtotem"],Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Enchanted Totem of Undying","color":"aqua","italic":false}'},HideFlags:1,cc.dp.et:1,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}

execute if predicate dpyramid:50_percent run summon item ~ ~6 ~ {PickupDelay:50,Tags:["cc.dp.usedtotem"],Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{display:{Name:'{"text":"Enchanted Totem of Undying","color":"aqua","italic":false}'},HideFlags:1,cc.dp.et:1,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}

fill ~ ~11 ~ ~ ~35 ~ glass replace sand
fill ~ ~11 ~ ~ ~35 ~ glass replace sandstone

# advancement
execute at @e[type=armor_stand,tag=cc.dp.anchor,tag=cc.dp.active] positioned ~-9 ~-2 ~-9 as @a[dx=17,dy=6,dz=17,gamemode=adventure] run advancement grant @s only dpyramid:adventure/win



# reset structure
execute if entity @s[tag=cc.dp.north] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:-10,posY:-3,posZ:-10,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
 
execute if entity @s[tag=cc.dp.south] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:10,posY:-3,posZ:10,rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD"} replace

execute if entity @s[tag=cc.dp.east] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:10,posY:-3,posZ:-10,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

execute if entity @s[tag=cc.dp.west] run setblock ~ ~-1 ~ structure_block[mode=load]{name:"dpyramid:reset",posX:-10,posY:-3,posZ:10,rotation:"COUNTERCLOCKWISE_90",mirror:"NONE",mode:"LOAD"} replace

setblock ~ ~-2 ~ redstone_block

setblock ~1 ~ ~ glowstone replace
setblock ~-1 ~ ~ glowstone replace
setblock ~ ~ ~1 glowstone replace
setblock ~ ~ ~-1 glowstone replace

setblock ~ ~1 ~2 chest[facing=north]{LootTable:"dpyramid:treasure"}
setblock ~ ~1 ~-2 chest[facing=south]{LootTable:"dpyramid:treasure"}
setblock ~2 ~1 ~ chest[facing=west]{LootTable:"dpyramid:treasure"}
setblock ~-2 ~1 ~ chest[facing=east]{LootTable:"dpyramid:treasure"}

setblock ~ ~10 ~ white_stained_glass
setblock ~ ~ ~ minecraft:beacon{Levels:3,Secondary:11} replace


# kill cc.dp.mob
tp @e[tag=cc.dp.mob,distance=..20] ~ ~-300 ~

# remove active tag
tag @s remove cc.dp.active

# cooldown
tag @s add cc.dp.cooldown
scoreboard players set @s cc.dp.cooldown 0





