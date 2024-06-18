#
title @a[distance=0..3] title [{"text": "Desert Puzzle Room 1", "font": "illageralt"}]
title @a[distance=0..3] subtitle [{"text": "Brush & find the key", "font": "default", "color": "light_purple"}]

# North, East, South, West:
execute as @s[y_rotation=135..-135] run place template mmo_dungeons:desert/puzzle_room_1 ~6 ~-2 ~-2 180
execute as @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/puzzle_room_1 ~2 ~-2 ~6 counterclockwise_90
execute as @s[y_rotation=-45..45] run place template mmo_dungeons:desert/puzzle_room_1 ~-6 ~-2 ~2 none
execute as @s[y_rotation=45..135] run place template mmo_dungeons:desert/puzzle_room_1 ~-2 ~-2 ~-6 clockwise_90