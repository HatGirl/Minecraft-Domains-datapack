#--------------------------------#
# Equation: Internal Temperature #
#--------------------------------#
# x = y_level                    #
# a = var_modifier               #
# b = var_biome                  #
# d = var_time_day               #
# n = var_time_night             #
#--------------------------------#-----------------------------------------------------------------------#
#                                                                                                        #
# [ -1 (x - 65 + a + b + d + n)(x - 70 + a + b + d + n)( x/2 - 30 + a + b + d + n) + 31015000 ] / 100000 #
#                                                                                                        #
#--------------------------------------------------------------------------------------------------------#


# Call various functions to calculate the other variables
function domains:worldstates/temperature/calculations/time
function domains:worldstates/temperature/calculations/biome
function domains:worldstates/temperature/calculations/misc_modifiers

#------------------------------------#
# Calculate the internal temperature #
#------------------------------------#

# Get the y level of the player
execute as @a at @s store result score @s y_level run data get entity @s Pos[1] 1


# var_a calculations

# Store the y level - 65 in var_a
execute as @a at @s run scoreboard players operation @s var_a = @s y_level
scoreboard players set x x -65
execute as @a at @s run scoreboard players operation @s var_a += x x

# Add the misc modifiers to var_a
execute as @a at @s run scoreboard players operation @s var_a += @s var_modifier

# Add the biome modifier to var_a
execute as @a at @s run scoreboard players operation @s var_a += @s var_biome

# Add the time of day modifier to var_a
execute as @a at @s run scoreboard players operation @s var_a += @s var_time_day
execute as @a at @s run scoreboard players operation @s var_a += @s var_time_night


# var_b calculations

# Store the y level - 70 in var_b
execute as @a at @s run scoreboard players operation @s var_b = @s y_level
scoreboard players set x x -70
execute as @a at @s run scoreboard players operation @s var_b += x x

# Add the misc modifiers to var_b
execute as @a at @s run scoreboard players operation @s var_b += @s var_modifier

# Add the biome modifier to var_b
execute as @a at @s run scoreboard players operation @s var_b += @s var_biome

# Add the time of day modifier to var_b
execute as @a at @s run scoreboard players operation @s var_b += @s var_time_day
execute as @a at @s run scoreboard players operation @s var_b += @s var_time_night


# var_c calculations

# Store the y level in var_c then divide by 2
execute as @a at @s run scoreboard players operation @s var_c = @s y_level
scoreboard players set x x 2
execute as @a at @s run scoreboard players operation @s var_c /= x x

# subtract 30 from var_c
scoreboard players set x x -30
execute as @a at @s run scoreboard players operation @s var_c += x x

# Add the misc modifiers to var_c
execute as @a at @s run scoreboard players operation @s var_c += @s var_modifier

# Add the biome modifier to var_c
execute as @a at @s run scoreboard players operation @s var_c += @s var_biome

# Add the time of day modifier to var_c
execute as @a at @s run scoreboard players operation @s var_c += @s var_time_day
execute as @a at @s run scoreboard players operation @s var_c += @s var_time_night


# multiply the three variables together
execute as @a at @s store result score @s player_temperature run scoreboard players operation @s var_a *= @s var_b
execute as @a at @s run scoreboard players operation @s player_temperature *= @s var_c

# then multiply by -1
scoreboard players set x x -1
execute as @a at @s run scoreboard players operation @s player_temperature *= x x

# add 31015000 to the result
scoreboard players set x x 31015000
execute as @a at @s run scoreboard players operation @s player_temperature += x x


# get the decimal value of the temperature
scoreboard players set x x 1000
execute as @a at @s run scoreboard players operation @s player_temperature /= x x

execute as @a[scores={player_temperature=31151..}] at @s run function domains:worldstates/temperature/temperature_damage/heat_damage
execute as @a[scores={player_temperature=..30851}] at @s run function domains:worldstates/temperature/temperature_damage/frost_damage

execute as @a at @s run scoreboard players operation @s player_temperature_decimals = @s player_temperature
scoreboard players set x x 100
execute as @a at @s run scoreboard players operation @s player_temperature_decimals %= x x

scoreboard players operation @a player_temperature /= x x
