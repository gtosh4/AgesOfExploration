# init
# Desert Pyramid Miniboss
# by Chan Caleb
#


#say Desert Pyramid Boss Datapack Full Release v1.1 Initialised!
#tellraw @a [{"text":"Desert Pyramid Boss Full Release v1.1b","color":"yellow"},{"text":" initialised! ","color":"green"},{"text":"[Link to site]","color":"gray","clickEvent":{"action":"open_url","value":"https://www.https://www.planetminecraft.com/data-pack/desert-temple-miniboss-wip/"}}]
schedule function dpyramid:msg 4t

#scoreboard objectives add cc.dp.dmgtaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add cc.dp.mobcap dummy
scoreboard objectives add cc.dp.health dummy
scoreboard objectives add cc.dp.cooldown dummy


scoreboard players set $20 cc.dp.health 20
#scoreboard players set healthperdec cc.dp.health 0
scoreboard players set $5 cc.dp.mobcap 5



bossbar add dpyramid:cc.dp.healthbar {"text":"Dymarip","color":"white"}
bossbar set dpyramid:cc.dp.healthbar color pink


team add cc.dp.hidename
team modify cc.dp.hidename nametagVisibility never


tag @a[tag=cc.dp.usedtotem] remove cc.dp.usedtotem
tag @a[tag=cc.dp.adventure] remove cc.dp.adventure
