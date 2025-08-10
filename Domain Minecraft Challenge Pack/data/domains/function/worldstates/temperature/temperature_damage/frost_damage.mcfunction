execute as @a[scores={player_temperature=30826..30851}] at @s if score ticks ticks matches 20 if predicate domains:chance/15_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30800..30825}] at @s if score ticks ticks matches 20 if predicate domains:chance/20_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30750..30799}] at @s if score ticks ticks matches 20 if predicate domains:chance/25_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30700..30751}] at @s if score ticks ticks matches 20 if predicate domains:chance/35_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30600..30699}] at @s if score ticks ticks matches 20 if predicate domains:chance/50_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30400..30599}] at @s if score ticks ticks matches 20 if predicate domains:chance/75_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30200..30399}] at @s if score ticks ticks matches 20 if predicate domains:chance/90_percent run damage @s 1 freeze
execute as @a[scores={player_temperature=30199..}] at @s if score ticks ticks matches 20 run damage @s 1 freeze

execute as @s at @s run particle snowflake ~ ~1.5 ~ 0.1 0.1 0.1 0.01 1 force
effect give @s slowness 1 1 true