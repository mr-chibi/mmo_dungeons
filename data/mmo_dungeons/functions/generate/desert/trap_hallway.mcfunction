# North, East, South, West:
execute as @s[y_rotation=135..-135] run place template mmo_dungeons:desert/trap_hallway ~-4 ~-2 ~-34 none
execute as @s[y_rotation=-135..-45] run place template mmo_dungeons:desert/trap_hallway ~34 ~-2 ~-4 clockwise_90
execute as @s[y_rotation=-45..45] run place template mmo_dungeons:desert/trap_hallway ~4 ~-2 ~34 180
execute as @s[y_rotation=45..135] run place template mmo_dungeons:desert/trap_hallway ~-34 ~-2 ~4 counterclockwise_90