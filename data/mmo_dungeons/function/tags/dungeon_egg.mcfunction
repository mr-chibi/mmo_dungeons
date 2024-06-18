# North, East, South, West:
execute if biome ~ ~ ~ minecraft:desert as @s[y_rotation=135..-135] as @e[type=minecraft:marker,tag=dungeon_spawn_egg,distance=0..5,limit=1] at @s run place template mmo_dungeons:desert/stairs ~-2 ~-16 ~-16 none
execute if biome ~ ~ ~ minecraft:desert as @s[y_rotation=-135..-45] as @e[type=minecraft:marker,tag=dungeon_spawn_egg,distance=0..5,limit=1] at @s run place template mmo_dungeons:desert/stairs ~16 ~-16 ~-2 clockwise_90
execute if biome ~ ~ ~ minecraft:desert as @s[y_rotation=-45..45] as @e[type=minecraft:marker,tag=dungeon_spawn_egg,distance=0..5,limit=1] at @s run place template mmo_dungeons:desert/stairs ~2 ~-16 ~16 180
execute if biome ~ ~ ~ minecraft:desert as @s[y_rotation=45..135] as @e[type=minecraft:marker,tag=dungeon_spawn_egg,distance=0..5,limit=1] at @s run place template mmo_dungeons:desert/stairs ~-16 ~-16 ~2 counterclockwise_90

#
execute unless biome ~ ~ ~ minecraft:desert run give @s[scores={dungeon_egg=1..}] minecraft:phantom_spawn_egg[minecraft:custom_name='{"text": "Dungeon Spawn Egg", "color": "aqua"}',minecraft:entity_data={id:"minecraft:marker",Tags:["dungeon_spawn_egg"]}] 1
execute unless biome ~ ~ ~ minecraft:desert run tellraw @s[scores={dungeon_egg=1..}] [{"text": "Nothing resinated with spawn egg try another biome!", "color": "red"}]

#
execute as @e[type=minecraft:marker,tag=dungeon_spawn_egg,distance=0..5,limit=1] at @s run kill @s

#
scoreboard players set @s[scores={dungeon_egg=1..}] dungeon_egg 0