# North, East, South, West:
execute if entity @s[y_rotation=135..-135] run place template mmo_dungeons:desert/separator_1 ~5 ~-1 ~0 180
execute if entity @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/separator_1 ~0 ~-1 ~5 counterclockwise_90
execute if entity @s[y_rotation=-45..45] run place template mmo_dungeons:desert/separator_1 ~-5 ~-1 ~0 none
execute if entity @s[y_rotation=45..135] run place template mmo_dungeons:desert/separator_1 ~0 ~-1 ~-5 clockwise_90