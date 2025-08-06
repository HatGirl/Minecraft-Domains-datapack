function domains:worldstates/time/tick_time
function domains:worldstates/sprinting/tick_sprinting

execute as @a[scores={player_death=1}] at @s run function domains:worldstates/death_penalty

function domains:worldstates/food/tick_food
function domains:worldstates/sleeping/tick_sleeping
function domains:worldstates/temperature/tick_temperature
function domains:worldstates/thirst/tick_thirst

function domains:worldstates/displays/display_info