execute as @a at @s store result score @s y_level run data get entity @s Pos[1] 1

# Get whether the biome the player is in is cold, warm, or temperate
execute as @a at @s run scoreboard players set @s biome_ambient_temperature_modifier 0
execute as @a at @s if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run scoreboard players set @s biome_ambient_temperature_modifier -5
execute as @a at @s if biome ~ ~ ~ #minecraft:spawns_warm_variant_frogs run scoreboard players set @s biome_ambient_temperature_modifier 5

# Day time temp modifier
# Equation for time -> temperature modifier is
# -4|(time / 1000) - 6| + 24

scoreboard players set min_bound number 0
scoreboard players set max_bound number 12000

scoreboard players set number number 1000
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time /= number number

scoreboard players set number number 6
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time -= number number

scoreboard players set number number -4
execute as @a[scores={time=..-1}] at @s run scoreboard players set number number 4
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time *= number number

scoreboard players set number number 24
execute as @a at @s store result score @s time_ambient_temperature_modifier if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time += number number


# Night time temp modifier
# Equation for time -> temperature modifier is
# 4|(time / 1000) - 18| - 24

scoreboard players set min_bound number 12000
scoreboard players set max_bound number 24000

scoreboard players set number number 1000
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time /= number number

scoreboard players set number number 18
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time -= number number

scoreboard players set number number 4
execute as @a[scores={time=..-1}] at @s run scoreboard players set number number -4
execute as @a at @s store result score @s time if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time *= number number

scoreboard players set number number -24
execute as @a at @s store result score @s time_ambient_temperature_modifier if score time time >= min_bound number if score time time <= max_bound number run scoreboard players operation @s time += number number


# Full equation for calculating ambient temperature*       *no humidity modifier YET
# -( ( 66 / 140 ) * [y_level] - 324 ) + [time temp modifiers] + [biome value]

scoreboard players set number number 66
execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s y_level *= number number

scoreboard players set number number 140
execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s ambient_temperature /= number number

scoreboard players operation @s var_d = @s ambient_temperature

scoreboard players set number number 324
execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s ambient_temperature -= number number

scoreboard players set number number -1
execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s ambient_temperature *= number number
execute as @a at @s store result score @s var_d run scoreboard players operation @s var_d *= number number

execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s ambient_temperature += @s time_ambient_temperature_modifier
execute as @a at @s store result score @s var_d run scoreboard players operation @s var_d += @s time_ambient_temperature_modifier

execute as @a at @s store result score @s ambient_temperature run scoreboard players operation @s ambient_temperature += @s biome_ambient_temperature_modifier
execute as @a at @s store result score @s var_d run scoreboard players operation @s var_d += @s biome_ambient_temperature_modifier

# Player temperature calculations !! scale by 100000 !!
# ( ( -1 / 100000 ) ( y_level - 65 ) ( y_level - 70 ) ( ( 1 / 2) y_level - 30 ) + 310.15 ) + 0.025 ( ambient temperature ) 

execute as @a at @s store result score @s y_level run data get entity @s Pos[1] 1

scoreboard players set number number 65
execute as @a at @s store result score @s var_a run scoreboard players operation @s y_level -= number number

execute as @a at @s store result score @s y_level run data get entity @s Pos[1] 1

scoreboard players set number number 70
execute as @a at @s store result score @s var_b run scoreboard players operation @s y_level -= number number

execute as @a at @s store result score @s y_level run data get entity @s Pos[1] 1

scoreboard players set number number 30
execute as @a at @s store result score @s var_c run scoreboard players operation @s y_level -= number number


execute as @a at @s store result score @s player_temperature run scoreboard players operation @s var_a *= @s var_b
execute as @a at @s store result score @s player_temperature run scoreboard players operation @s player_temperature *= @s var_c

scoreboard players set number number -1
execute as @a at @s store result score @s player_temperature run scoreboard players operation @s player_temperature *= number number

scoreboard players set number number 31015000
execute as @a at @s store result score @s player_temperature run scoreboard players operation @s player_temperature += number number


scoreboard players set number number 2500
execute as @a at @s store result score @s var_a run scoreboard players operation @s var_d *= number number


execute as @a at @s store result score @s player_temperature run scoreboard players operation @s player_temperature += @s var_d

scoreboard players set number number 1000
execute as @a at @s store result score @s player_temperature run scoreboard players operation @s player_temperature /= number number


execute as @a[scores={player_temperature=31151..}] at @s run function domains:worldstates/temperature/temperature_reduction/heat_reduction
execute as @a[scores={player_temperature=..30437}] at @s run function domains:worldstates/temperature/temperature_reduction/frost_reduction

execute as @a[scores={player_temperature=31151..}] at @s run function domains:worldstates/temperature/temperature_damage/heat_damage
execute as @a[scores={player_temperature=..30437}] at @s run function domains:worldstates/temperature/temperature_damage/frost_damage


execute as @a at @s run scoreboard players operation @s var_a = @s player_temperature


scoreboard players set number number 100
execute as @a at @s store result score @s player_temperature_decimals run scoreboard players operation @s var_a %= number number

execute as @a at @s run scoreboard players operation @s player_temperature /= number number

scoreboard players set @a var_d 0