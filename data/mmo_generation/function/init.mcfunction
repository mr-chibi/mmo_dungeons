#
execute as @a at @s store result score @s dungeon_y run data get entity @s Pos[1]

#
execute as @a at @s if entity @e[type=minecraft:armor_stand,distance=..100,tag=mmo_generation_camera] run function mmo_generation:camera/init