scoreboard players set @a var_biome 0

execute as @a at @s if predicate domains:biomes/cold if predicate domains:time/day run scoreboard players operation @s var_biome = @s var_time_day
execute as @a at @s if predicate domains:biomes/cold if predicate domains:time/night run scoreboard players operation @s var_biome = @s var_time_night
execute as @a at @s if predicate domains:biomes/warm if predicate domains:time/day run scoreboard players operation @s var_biome = @s var_time_day
execute as @a at @s if predicate domains:biomes/warm if predicate domains:time/night run scoreboard players operation @s var_biome = @s var_time_night

scoreboard players set x x 2
execute as @a at @s if predicate domains:biomes/cold run scoreboard players operation @s var_biome /= x x
scoreboard players set x x -12
execute as @a at @s if predicate domains:biomes/cold run scoreboard players operation @s var_biome += x x

scoreboard players set x x 2
execute as @a at @s if predicate domains:biomes/warm run scoreboard players operation @s var_biome *= x x