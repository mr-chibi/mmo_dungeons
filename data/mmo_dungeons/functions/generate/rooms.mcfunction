# Randomization of rooms generator:
execute as @s[tag=mmo_dungeon_key] as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=!dungeon_generated] at @s run tag @s[tag=!dungeon_generated] add dungeon_generated
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] at @s store result score @s dungeon_spawn_room run random value 1..5
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] at @s run tellraw @a [{"score":{"name":"@s","objective":"dungeon_spawn_room"}}]

# Generation:
function #mmo_dungeons:generate/cave

# Removal & Reset:
execute if entity @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] run clear @s minecraft:iron_nugget[minecraft:custom_data={Tags:["dungeon_key"]}] 1
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] at @s run kill @s

# Preventions:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=!dungeon_preventions,tag=dungeon_generated] at @s run tag @s add dungeon_preventions
execute as @e[type=minecraft:marker,tag=mmo_dungeon_door,distance=0..1,limit=1,tag=dungeon_preventions] at @s run tag @s remove dungeon_generated