# Give player key (Admin):
# give @s minecraft:iron_nugget[minecraft:custom_name='{"text": "Dungeon Key", "color": "red"}',minecraft:custom_data={Tags:["dungeon_key"]}]
# give @s minecraft:gold_nugget[minecraft:custom_data={Tags:["dungeon_boss_key"]}] 1
# data modify block ~ ~-1 ~ item set value {id:"minecraft:iron_nugget", Count:1b, tag:{display:{Name:"{\"text\": \"Dungeon Key\", \"color\": \"red\"}"},Tags:["dungeon_key"]}}

# [Dungeon Key]:
tag @s[nbt={Inventory:[{id:"minecraft:trial_key",components:{"minecraft:custom_data":{Tags:["dungeon_key"]}}}]}] add mmo_dungeon_key
tag @s[nbt=!{Inventory:[{id:"minecraft:trial_key",components:{"minecraft:custom_data":{Tags:["dungeon_key"]}}}]}] remove mmo_dungeon_key

# [Dungeon Broken Key]:
tag @s[nbt={Inventory:[{id:"minecraft:iron_nugget",components:{"minecraft:custom_data":{Tags:["dungeon_key"]}}}]}] add mmo_dungeon_broken_key
tag @s[nbt=!{Inventory:[{id:"minecraft:iron_nugget",components:{"minecraft:custom_data":{Tags:["dungeon_key"]}}}]}] remove mmo_dungeon_broken_key

# [Boss Key]:
tag @s[nbt={Inventory:[{id:"minecraft:ominous_trial_key",components:{"minecraft:custom_data":{Tags:["dungeon_boss_key"]}}}]}] add mmo_boss_key
tag @s[nbt=!{Inventory:[{id:"minecraft:ominous_trial_key",components:{"minecraft:custom_data":{Tags:["dungeon_boss_key"]}}}]}] remove mmo_boss_key