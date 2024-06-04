# North, East, South, West:
execute as @s[y_rotation=135..-135] run place template mmo_dungeons:desert/catacombs_2 ~-7 ~-2 ~-34 none
execute as @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/catacombs_2 ~34 ~-2 ~-7 clockwise_90
execute as @s[y_rotation=-45..45] run place template mmo_dungeons:desert/catacombs_2 ~7 ~-2 ~34 180
execute as @s[y_rotation=45..135] run place template mmo_dungeons:desert/catacombs_2 ~-34 ~-2 ~7 counterclockwise_90