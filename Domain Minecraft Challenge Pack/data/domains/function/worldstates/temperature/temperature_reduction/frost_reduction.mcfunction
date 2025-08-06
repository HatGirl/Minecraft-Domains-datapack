execute as @s at @s if items entity @s armor.* leather_boots if items entity @s armor.* leather_leggings if items entity @s armor.* leather_chestplate if items entity @s armor.* leather_helmet run tag @s add frost_resistance

execute as @s[tag=frost_resistance] at @s run scoreboard players set @s player_temperature 30450