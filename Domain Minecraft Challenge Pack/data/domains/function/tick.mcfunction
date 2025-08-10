# This v can be found in the worldstates folder under tick_worldstates: adds the hunger effect to all players, increasing how often players need to eat
scoreboard players add ticks ticks 1

function domains:worldstates/tick_worldstates

scoreboard players set @a is_sprinting 0
tag @a remove sprinting

scoreboard players set x x 20
execute if score ticks ticks >= x x run scoreboard players set ticks ticks 0 