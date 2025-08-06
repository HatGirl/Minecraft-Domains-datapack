execute as @s at @s if items entity @s hotbar.* blue_ice run tag @s add blue_ice
execute as @s at @s if items entity @s hotbar.* blue_ice run scoreboard players add @s temperature_ticks 1

execute as @s[tag=!blue_ice] at @s if items entity @s hotbar.* packed_ice run tag @s add packed_ice
execute as @s[tag=packed_ice] at @s if items entity @s hotbar.* packed_ice run scoreboard players add @s temperature_ticks 2

execute as @s[tag=!blue_ice,tag=!packed_ice] at @s if items entity @s hotbar.* ice run tag @s add ice
execute as @s[tag=ice] at @s if items entity @s hotbar.* ice run scoreboard players add @s temperature_ticks 3

execute as @s[tag=!blue_ice,tag=!packed_ice,tag=!ice] at @s if items entity @s hotbar.* snow_block run tag @s add snow_block
execute as @s[tag=snow_block] at @s if items entity @s hotbar.* snow_block run scoreboard players add @s temperature_ticks 5

execute as @s[tag=!blue_ice,tag=!packed_ice,tag=!ice,tag=!snow_block] at @s if items entity @s hotbar.* snowball run tag @s add snowball
execute as @s[tag=snowball] at @s if items entity @s hotbar.* snowball run scoreboard players add @s temperature_ticks 6


execute as @s[tag=blue_ice] at @s run scoreboard players set @s player_temperature 31000
execute as @s[tag=packed_ice] at @s run scoreboard players set @s player_temperature 31000
execute as @s[tag=ice] at @s run scoreboard players set @s player_temperature 31000
execute as @s[tag=snow_block] at @s run scoreboard players set @s player_temperature 31000
execute as @s[tag=snowball] at @s run scoreboard players set @s player_temperature 31000

execute as @s[scores={temperature_ticks=200..},tag=blue_ice] at @s if items entity @s hotbar.* blue_ice run clear @s blue_ice 1
execute as @s[scores={temperature_ticks=200..},tag=packed_ice] at @s if items entity @s hotbar.* packed_ice run clear @s packed_ice 1
execute as @s[scores={temperature_ticks=200..},tag=ice] at @s if items entity @s hotbar.* ice run clear @s ice 1
execute as @s[scores={temperature_ticks=200..},tag=snow_block] at @s if items entity @s hotbar.* snow_block run clear @s snow_block 1
execute as @s[scores={temperature_ticks=200..},tag=snowball] at @s if items entity @s hotbar.* snowball run clear @s snowball 1


execute as @s[scores={temperature_ticks=200..}] at @s run scoreboard players set @s temperature_ticks 0

tag @s remove cold_item
tag @s remove blue_ice
tag @s remove packed_ice
tag @s remove ice
tag @s remove snow_block
tag @s remove snowball