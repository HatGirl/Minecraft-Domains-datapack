execute as @s at @s run particle falling_water ~ ~1.5 ~ 0.1 0.0 0.1 0.05 1 force
execute as @s at @s run scoreboard players add @s temperature_ticks 1
execute as @s[scores={temperature_ticks=40}] at @s run damage @s 1 on_fire
execute as @s[scores={temperature_ticks=40}] at @s run scoreboard players set @s temperature_ticks 0