execute as @s at @s run effect give @s minecraft:slowness 1 1 true
execute as @s at @s run scoreboard players add @s temperature_ticks 1
execute as @s[scores={temperature_ticks=60}] at @s run damage @s 1 freeze
execute as @s[scores={temperature_ticks=60}] at @s run scoreboard players set @s temperature_ticks 0