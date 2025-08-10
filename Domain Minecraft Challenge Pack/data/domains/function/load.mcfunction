#function domains:restrictions/load_restrictions
#function domains:proficiency/load_proficiencies
function domains:worldstates/load_worldstates

scoreboard objectives add ticks dummy

# Math
scoreboard objectives add x dummy
scoreboard players set x x 0

scoreboard objectives add var_a dummy
scoreboard objectives add var_b dummy
scoreboard objectives add var_c dummy
scoreboard objectives add var_d dummy

# Version 0.2 patch notes
tellraw @a [{"text":"\nMinecraft Domains Challenge Pack - V 0.2 - \n====================================\nPatch Notes:\n\n- Temperature calculations overhaul\n\n- Nether-specific temperature fixed\n\n- Time between thirst ticks increased by 1 second (5 seconds -> 6 seconds)\n\n- Campfires heat players, soul campfires chill players\n\n- Removed frost immunity while wearing leather armor\n\n- Temperature damage overhaul (damage triggered by percentage as player heat changes to extremes)\n\n- Time of day will no longer affect a pleyers temperature if they cannot see the sky (discounting leaves)"}]