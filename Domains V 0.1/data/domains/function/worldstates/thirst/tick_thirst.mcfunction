execute as @a[tag=!sprinting,scores={thirst=..100}] at @s run scoreboard players add @s thirst_ticks 1
execute as @a[tag=sprinting,scores={thirst=..100}] at @s run scoreboard players add @s thirst_ticks 2

execute as @a[scores={thirst_ticks=100}] at @s run scoreboard players remove @s thirst 1
execute as @a[scores={thirst_ticks=100..}] at @s run scoreboard players set @s thirst_ticks 0

execute as @a[scores={hydrate=1..}] at @s run scoreboard players add @s thirst 20
execute as @a[scores={hydrate=1..}] at @s run scoreboard players set @s dehydrated 0
execute as @a[scores={hydrate=1..}] at @s run scoreboard players set @s hydrate 0

execute as @a[scores={thirst=..0}] at @s run scoreboard players set @s thirst 0
execute as @a[scores={thirst=100..}] at @s run scoreboard players set @s thirst 100


execute as @a[scores={thirst=0}] at @s run scoreboard players add @s dehydrated 1
execute as @a[scores={dehydrated=40}] at @s run damage @s 1 dry_out
execute as @a[scores={dehydrated=40..}] at @s run scoreboard players set @s dehydrated 0
