# Boss Entity:
function mmo_dungeons:generate/desert/entities/boss

# Dungeon Rooms:
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_enterance,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 1
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_trap_hallway,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 2
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_treasure_room_1,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 3
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_catacombs_1,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 4
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_separator_1,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 5
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_treasure_room_2,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 6
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_puzzle_room_1,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 7
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_resting_room,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 8
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_catacombs_2,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 9
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_boss_chamber,distance=0..2,limit=1] at @s[tag=!dungeon_generated] run scoreboard players set @s dungeon_spawn_room 10

#
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_enterance,distance=0..2,limit=1,scores={dungeon_spawn_room=1}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/enterance
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_trap_hallway,distance=0..2,limit=1,scores={dungeon_spawn_room=2}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/trap_hallway
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_treasure_room_1,distance=0..2,limit=1,scores={dungeon_spawn_room=3}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/treasure_room_1
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_catacombs_1,distance=0..2,limit=1,scores={dungeon_spawn_room=4}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/catacombs_1
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_separator_1,distance=0..2,limit=1,scores={dungeon_spawn_room=5}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/separator_1

# Door Entity:
function mmo_dungeons:generate/desert/entities/locks

#
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_catacombs_2,distance=0..2,limit=1,scores={dungeon_spawn_room=9}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/catacombs_2
execute as @e[type=minecraft:marker,tag=mmo_dungeon,tag=desert_boss_chamber,distance=0..2,limit=1,scores={dungeon_spawn_room=10}] at @s as @p[distance=0..2] at @s run function mmo_dungeons:generate/desert/boss_chamber

#
execute as @e[type=minecraft:marker,tag=mmo_dungeon,distance=0..2,limit=1] at @s run tag @s[tag=!dungeon_generated] add dungeon_generated

#
execute as @e[type=minecraft:marker,tag=desert_enterance,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=1}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_trap_hallway,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=2}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_treasure_room_1,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=3}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_catacombs_1,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=4}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_separator_1,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=5}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_catacombs_2,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=9}] at @s run kill @s
execute as @e[type=minecraft:marker,tag=desert_boss_chamber,tag=dungeon_generated,distance=0..2,limit=1,scores={dungeon_spawn_room=10}] at @s run kill @s