#
title @a[distance=0..10] title [{"text": "Catacombs Boss Chamber", "font": "illageralt"}]
title @a[distance=0..10] subtitle [{"text": "Egyptian Desert Guardian", "font": "default", "color": "red"}]

# North, East, South, West:
execute if entity @s[y_rotation=135..-135] run place template mmo_dungeons:desert/boss_chamber ~-13 ~-3 ~-18 none
execute if entity @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/boss_chamber ~18 ~-3 ~-13 clockwise_90
execute if entity @s[y_rotation=-45..45] run place template mmo_dungeons:desert/boss_chamber ~13 ~-3 ~18 180
execute if entity @s[y_rotation=45..135] run place template mmo_dungeons:desert/boss_chamber ~-18 ~-3 ~13 counterclockwise_90