# North, East, South, West:
execute if entity @s[y_rotation=135..-135] run place template mmo_dungeons:desert/trap_hallway ~-4 ~-2 ~-33 none
execute if entity @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/trap_hallway ~33 ~-2 ~-4 clockwise_90
execute if entity @s[y_rotation=-45..45] run place template mmo_dungeons:desert/trap_hallway ~4 ~-2 ~33 180
execute if entity @s[y_rotation=45..135] run place template mmo_dungeons:desert/trap_hallway ~-33 ~-2 ~4 counterclockwise_90