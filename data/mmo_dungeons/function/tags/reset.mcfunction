# Reset Msg:
title @a[distance=0..6] title [{"text": "Reset Dungeon Room!!", "color": "red"}]

# Reset Criteria:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s run scoreboard players reset @s dungeon_slain_entities

# Reset Spawner Tags:
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s run tag @s remove dunegon_critera
execute as @e[type=minecraft:marker,tag=mmo_dungeon_spawner,distance=0..6,sort=nearest] at @s run tag @s remove dunegon_complete