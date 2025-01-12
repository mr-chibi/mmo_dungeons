# Mobs Loot tables, [RNG]:
execute if biome ~ ~ ~ minecraft:desert if score @s slain_husk matches 1.. run function mmo_dungeons:mobs/husk

# Reset Loottables:
scoreboard players set @s[scores={mmo_rng=1..}] mmo_rng 0