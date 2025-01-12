#
title @a[distance=0..3] title [{"text": "Desert Treasure Room", "font": "illageralt"}]
title @a[distance=0..3] subtitle [{"text": "Dungeon Treasure", "font": "default", "color": "light_purple"}]

#
playsound minecraft:entity.player.levelup master @a[distance=0..5] ~ ~ ~ 2 1.25

# North, East, South, West:
execute if entity @s[y_rotation=135..-135] run place template mmo_dungeons:desert/treasure_room_1 ~5 ~-1 ~-2 180
execute if entity @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/treasure_room_1 ~2 ~-1 ~5 counterclockwise_90
execute if entity @s[y_rotation=-45..45] run place template mmo_dungeons:desert/treasure_room_1 ~-5 ~-1 ~2 none
execute if entity @s[y_rotation=45..135] run place template mmo_dungeons:desert/treasure_room_1 ~-2 ~-1 ~-5 clockwise_90