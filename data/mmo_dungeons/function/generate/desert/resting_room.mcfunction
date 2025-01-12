#
title @a[distance=0..3] title [{"text": "Desert Resting Room", "font": "illageralt"}]
title @a[distance=0..3] subtitle [{"text": "Dungeon Resting Room", "font": "default"}]

# North, East, South, West:
execute if entity @s[y_rotation=135..-135] run place template mmo_dungeons:desert/resting_room ~5 ~-1 ~-2 180
execute if entity @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/resting_room ~2 ~-1 ~5 counterclockwise_90
execute if entity @s[y_rotation=-45..45] run place template mmo_dungeons:desert/resting_room ~-5 ~-1 ~2 none
execute if entity @s[y_rotation=45..135] run place template mmo_dungeons:desert/resting_room ~-2 ~-1 ~-5 clockwise_90