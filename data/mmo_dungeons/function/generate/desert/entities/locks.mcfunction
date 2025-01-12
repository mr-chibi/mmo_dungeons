# Check for if player has key:
execute if entity @s[tag=mmo_dungeon_key] as @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=!dungeon_door] at @s run tag @s[tag=!dungeon_door] add dungeon_door
execute if entity @s[tag=mmo_dungeon_key] as @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=!dungeon_door] at @s run tag @s[tag=!dungeon_door] add dungeon_door
execute if entity @s[tag=mmo_dungeon_broken_key] as @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=!dungeon_door] at @s run tag @s[tag=!dungeon_door] add dungeon_door

# Remove Key:
execute if entity @s[tag=mmo_dungeon_key] if entity @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] run clear @s minecraft:trial_key[minecraft:custom_data={Tags:["dungeon_key"]}] 1
execute if entity @s[tag=mmo_dungeon_key] if entity @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] run clear @s minecraft:trial_key[minecraft:custom_data={Tags:["dungeon_key"]}] 1
execute if entity @s[tag=mmo_dungeon_broken_key] if entity @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] run clear @s minecraft:iron_nugget[minecraft:custom_data={Tags:["dungeon_key"]}] 1

# Generate Room:
execute if entity @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] run function mmo_dungeons:generate/desert/treasure_room_2
execute if entity @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] run function mmo_dungeons:generate/desert/puzzle_room_1
execute if entity @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] run function mmo_dungeons:generate/desert/resting_room

# Remove Door:
execute if entity @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] at @s run setblock ~ ~ ~ minecraft:air
execute if entity @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] at @s run setblock ~ ~ ~ minecraft:air
execute if entity @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] at @s run setblock ~ ~ ~ minecraft:air

# Kill Marker:
execute if entity @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_treasure_room_2,distance=0..1,limit=1,tag=dungeon_door] at @s run kill @s
execute if entity @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_puzzle_room_1,distance=0..1,limit=1,tag=dungeon_door] at @s run kill @s
execute if entity @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] as @e[type=minecraft:marker,tag=desert_resting_room,distance=0..1,limit=1,tag=dungeon_door] at @s run kill @s