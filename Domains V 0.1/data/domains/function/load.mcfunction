#function domains:restrictions/load_restrictions
#function domains:proficiency/load_proficiencies
function domains:worldstates/load_worldstates

scoreboard objectives add ticks dummy

# Math
scoreboard objectives add number dummy
scoreboard players set number number 0

scoreboard objectives add var_a dummy
scoreboard objectives add var_b dummy
scoreboard objectives add var_c dummy
scoreboard objectives add var_d dummy

# Version 0.1 patch notes
tellraw @a [{"text":"\nMinecraft Domains Challenge Pack - V 0.1 - \n====================================\nPatch Notes:\n\n- Redo of temperature mechanic to include better\noverlay and include cold temperatures\n\n- Added better sleeping overlay\n\n- Added thirst as percentage"}]