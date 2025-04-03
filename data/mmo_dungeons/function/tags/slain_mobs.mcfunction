# Fetch Spawner Criteria:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete,tag=!dunegon_critera] store result score @s dungeon_total_entities run data get entity @s data.slain_mobs_requirement

# Setup Spawner Types:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] store result score @s dungeon_spawn_type run random value 1..17
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 1 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:skeleton"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 2 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:spider"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 3 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:cave_spider"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 4 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombie"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 5 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombie_villager"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 6 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:husk"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 7 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:drowned"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 8 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:slime"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 9 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:pillager"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 10 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:vindicator"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 11 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:witch"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 12 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:blaze"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 13 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:magma_cube"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 14 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:piglin"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 15 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:piglin_brute"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 16 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombified_piglin"}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete,tag=!dunegon_critera] if score @s dungeon_spawn_type matches 17 run setblock ~ ~ ~ minecraft:spawner{SpawnData:{entity:{id:"minecraft:hoglin"}}}

# Setup Criteria Preventions Tag:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete,tag=!dunegon_critera] run tag @s add dunegon_critera

# If player, breaks spawner remove EXP:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete,tag=dunegon_critera] if block ~ ~ ~ minecraft:air run kill @e[type=minecraft:experience_orb,distance=0..6]

# If Player Breaks spawner reset room:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete,tag=dunegon_critera] unless block ~ ~ ~ minecraft:spawner run function mmo_dungeons:tags/reset

# If player slain mob add to spawner count:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete] run scoreboard players add @s dungeon_slain_entities 0

# If player slain mob add to spawner count:
execute if score @s slain_mob matches 1.. as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest,limit=1] at @s[tag=!dunegon_complete] run scoreboard players add @s dungeon_slain_entities 1
scoreboard players set @s[scores={slain_mob=1..}] slain_mob 0

# If "Slain mobs" meet "spawner criteria" then remove spawner drop key:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete] if score @s dungeon_slain_entities >= @s dungeon_total_entities run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete] if score @s dungeon_slain_entities >= @s dungeon_total_entities run title @a[distance=0..6] title [{"text": "Dungeon Room Complete!!", "color": "green"}]
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete] if score @s dungeon_slain_entities >= @s dungeon_total_entities run playsound minecraft:entity.player.levelup master @a[distance=0..6] ~ ~ ~ 0.5 0.53
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete] if score @s dungeon_slain_entities >= @s dungeon_total_entities run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:trial_key",Count:1,components:{"minecraft:custom_data":{Tags:["dungeon_key"]},"minecraft:custom_name":{"text": "Dungeon Key", "color": "red"}}}}
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=!dunegon_complete] if score @s dungeon_slain_entities >= @s dungeon_total_entities run tag @s add dunegon_complete 
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s[tag=dunegon_complete] run kill @s