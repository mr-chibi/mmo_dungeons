# RNG:
execute store result score @s mmo_rng run random value 1..100

#
give @s[scores={mmo_rng=24}] minecraft:phantom_spawn_egg[minecraft:custom_name={"text": "Desert Catacombs Dungeon", "color": "aqua"},minecraft:entity_data={id:"minecraft:marker",Tags:["dungeon_spawn_egg"]}] 1
tellraw @s[scores={mmo_rng=24}] [{"text": "Husk you've slained dropped an, ", "color": "#c5c5c5"}, {"text": "\"Desert Catacombs Dungeon\"", "color": "#BFB4FF"}, {"text": "!", "color": "#c5c5c5"}]
