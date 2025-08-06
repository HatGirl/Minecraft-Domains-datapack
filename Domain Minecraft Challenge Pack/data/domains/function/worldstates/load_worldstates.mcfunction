# Gamerules for the Domain Minecraft Challenge

function domains:worldstates/sleeping/load_sleeping
function domains:worldstates/food/load_food
function domains:worldstates/temperature/load_temperature
function domains:worldstates/thirst/load_thirst
function domains:worldstates/sprinting/load_sprinting
function domains:worldstates/time/load_time

scoreboard objectives add player_death deathCount
scoreboard objectives add health health

gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 1
gamerule forgiveDeadPlayers false
gamerule waterSourceConversion false
gamerule universalAnger true
gamerule naturalRegeneration false
gamerule snowAccumulationHeight 10