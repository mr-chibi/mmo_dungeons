#
tag @s[tag=!mossy_mineshaft_ruins] add mossy_mineshaft_ruins

#
gamemode spectator @s[tag=mossy_mineshaft_ruins]

#
scoreboard players add @s[tag=mossy_mineshaft_ruins] dungeon_animation_timer 0

#
execute if score @s dungeon_animation_timer matches ..190 run scoreboard players add @s dungeon_animation_timer 1

#
spectate @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] @s[tag=mossy_mineshaft_ruins,scores={dungeon_animation_timer=0..50}]

#
execute if score @s dungeon_animation_timer matches 10 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [150f,0f]
execute if score @s dungeon_animation_timer matches 15 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [175f,0f]
execute if score @s dungeon_animation_timer matches 20 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [200f,0f]
execute if score @s dungeon_animation_timer matches 25 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [225f,0f]
execute if score @s dungeon_animation_timer matches 30 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [250f,0f]
execute if score @s dungeon_animation_timer matches 35 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [275f,0f]
execute if score @s dungeon_animation_timer matches 40 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [300f,0f]
execute if score @s dungeon_animation_timer matches 45 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [325f,0f]
execute if score @s dungeon_animation_timer matches 50 as @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] at @s run data modify entity @s Rotation set value [360f,0f]

#
spectate @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_2] @s[tag=mossy_mineshaft_ruins,scores={dungeon_animation_timer=70}]

#
execute if score @s dungeon_animation_timer matches 80 run playsound minecraft:ambient.basalt_deltas.mood master @s ~ ~ ~ 2 0.5
execute if score @s dungeon_animation_timer matches 80 run title @s title [{"text": "Mossy Mineshaft Ruins", "color": "white", "font": "illageralt"}]
execute if score @s dungeon_animation_timer matches 80 run title @s subtitle [{"text": "Mossy Mineshaft Ruins", "color": "gray"}]

#
spectate @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_3] @s[tag=mossy_mineshaft_ruins,scores={dungeon_animation_timer=100}]

#
spectate @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_4] @s[tag=mossy_mineshaft_ruins,scores={dungeon_animation_timer=130}]

#
spectate @e[type=minecraft:armor_stand,distance=..100,limit=1,tag=mossy_mineshaft_camera_1] @s[tag=mossy_mineshaft_ruins,scores={dungeon_animation_timer=160}]

#
execute if score @s dungeon_animation_timer matches 190.. run gamemode survival @s

#
execute if score @s dungeon_animation_timer matches 190.. run tag @s remove mossy_mineshaft_ruins

#
execute if score @s dungeon_animation_timer matches 190.. run kill @e[type=minecraft:armor_stand,distance=..100,tag=mossy_mineshaft_camera_1]
execute if score @s dungeon_animation_timer matches 190.. run kill @e[type=minecraft:armor_stand,distance=..100,tag=mossy_mineshaft_camera_2]
execute if score @s dungeon_animation_timer matches 190.. run kill @e[type=minecraft:armor_stand,distance=..100,tag=mossy_mineshaft_camera_3]
execute if score @s dungeon_animation_timer matches 190.. run kill @e[type=minecraft:armor_stand,distance=..100,tag=mossy_mineshaft_camera_4]

#
execute if score @s dungeon_animation_timer matches 190.. run scoreboard players reset @s dungeon_animation_timer
