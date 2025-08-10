# The time is made NEGATIVE in the equation so that this part works in the final equation because shifting temperature right requires a negative value

#---------------------------------#
# Equation: Time                  #
#---------------------------------#
# var_time_day:    2|time-6|-12   #
# var_time_night: -2|time-18|+12  #
#---------------------------------#

execute if score time time matches 0..12000 run tag @a add day
execute if score time time matches 12001..23999 run tag @a add night

scoreboard players set @a var_time_day 0
scoreboard players set @a var_time_night 0

# divides time by 1000 to get single/double digit number
scoreboard players set x x 1000
execute as @a at @s run scoreboard players operation @s time /= x x

#----------------------------------#
#           var_time_day           #
#----------------------------------#

execute as @a[tag=day] at @s run scoreboard players operation @s var_time_day = @s time

# subtracts 6 from time to account for 6000 being the middle of the day
# shifts time (or x) to the right by 6 units


scoreboard players set x x -6
execute as @a[tag=day] at @s run scoreboard players operation @s var_time_day += x x

# take the absolute value of the time
scoreboard players set x x -1
execute as @a[scores={var_time_day=..-1},tag=day] at @s run scoreboard players operation @s var_time_day *= x x

# scale factor of 2 for the time of day to account for the y coordinate being decreased by 12 later on
scoreboard players set x x 2
execute as @a[tag=day] at @s run scoreboard players operation @s var_time_day *= x x

# finally, subtract 12 to get the correct scailing of time to temperature
scoreboard players set x x -12
execute as @a[tag=day] at @s run scoreboard players operation @s var_time_day += x x


#----------------------------------#
#          var_time_night          #
#----------------------------------#

# night calculations are basically the same as day calculations but accounting for midnight at time 18000 instead of 6000

execute as @a[tag=night] at @s store result score @s var_time_night run scoreboard players get @s time

scoreboard players set x x -18
execute as @a[tag=night] at @s run scoreboard players operation @s var_time_night += x x

scoreboard players set x x -1
execute as @a[scores={var_time_night=..-1},tag=night] at @s run scoreboard players operation @s var_time_night *= x x

scoreboard players set x x -2
execute as @a[tag=night] at @s run scoreboard players operation @s var_time_night *= x x

scoreboard players set x x 12
execute as @a[tag=night] at @s run scoreboard players operation @s var_time_night += x x

tag @a remove day
tag @a remove night