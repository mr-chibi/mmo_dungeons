#
title @a[distance=0..3] title [{"text": "Catacombs Dungeon", "font": "illageralt"}]
title @a[distance=0..3] subtitle [{"text": "The Desert Catacombs", "font": "default", "color": "yellow"}]

# North, East, South, West:
execute as @s[y_rotation=135..-135] run place template mmo_dungeons:desert/enterance ~7 ~-5 ~ 180
execute as @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/enterance ~ ~-5 ~7 counterclockwise_90
execute as @s[y_rotation=-45..45] run place template mmo_dungeons:desert/enterance ~-7 ~-5 ~ none
execute as @s[y_rotation=45..135] run place template mmo_dungeons:desert/enterance ~ ~-5 ~-7 clockwise_90