execute as @a[scores={player_temperature=31151..31170}] at @s if score ticks ticks matches 20 if predicate domains:chance/15_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31171..31190}] at @s if score ticks ticks matches 20 if predicate domains:chance/20_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31191..31235}] at @s if score ticks ticks matches 20 if predicate domains:chance/25_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31236..31275}] at @s if score ticks ticks matches 20 if predicate domains:chance/35_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31276..31300}] at @s if score ticks ticks matches 20 if predicate domains:chance/50_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31301..31355}] at @s if score ticks ticks matches 20 if predicate domains:chance/75_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31356..31400}] at @s if score ticks ticks matches 20 if predicate domains:chance/90_percent run damage @s 1 on_fire
execute as @a[scores={player_temperature=31401..}] at @s if score ticks ticks matches 20 run damage @s 1 on_fire

execute as @s at @s run particle flame ~ ~1.5 ~ 0.1 0.1 0.1 0.01 1 force
execute as @a at @s if score ticks ticks matches 20 run scoreboard players add @s thirst_ticks 10