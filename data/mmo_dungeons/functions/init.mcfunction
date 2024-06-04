# summon minecraft:marker ~ ~ ~ {data:{slain_mobs_requirement:3},Tags:["mmo_dungeon_spawner"]}
# summon minecraft:marker ~ ~ ~ {Tags:["mmo_dungeon_door"]}

# Generate:
execute as @s[tag=!mmo_debug] run function mmo_dungeons:generate/desert/init

# Tags:
function mmo_dungeons:tags/key
function mmo_dungeons:tags/dungeon_egg
function mmo_dungeons:tags/reset
function mmo_dungeons:tags/slain_mobs

# Soundtracks:
execute if score @s music_settings matches 0 run function mmo:music/themes/entity
execute if score @s[tag=battle_theme] music_settings matches 0 run function mmo:music/themes/battle/init
execute if score @s[tag=overworld_theme] music_settings matches 0 run function mmo:music/themes/overworld/init