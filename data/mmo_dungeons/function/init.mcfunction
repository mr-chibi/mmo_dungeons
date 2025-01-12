# summon minecraft:marker ~ ~ ~ {data:{slain_mobs_requirement:3},Tags:["mmo_dungeon_spawner"]}
# summon minecraft:marker ~ ~ ~ {Tags:["mmo_dungeon_door"]}

# Generate:
function mmo_dungeons:generate/desert/init

# Add Entities Slain:
function mmo_dungeons:scoreboards/slain_entities
function mmo_dungeons:scoreboards/rng

# Tags:
function mmo_dungeons:tags/key
function mmo_dungeons:tags/dungeon_egg
function mmo_dungeons:tags/slain_mobs