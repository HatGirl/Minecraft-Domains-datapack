scoreboard players set @a var_modifier 0


# Check if player is under the sky
scoreboard players set x x 3
execute as @a at @s unless predicate domains:block_checks/under_sky run scoreboard players operation @s var_time_day /= x x
execute as @a at @s unless predicate domains:block_checks/under_sky run scoreboard players operation @s var_time_night /= x x


# Nether roof = y128, at this level temp should be liveable (var_modifier = -104 while in nether)
execute as @a at @s if dimension minecraft:the_nether run scoreboard players remove @s var_modifier 104
execute as @a at @s if dimension minecraft:the_nether run scoreboard players set @s var_time_day 0
execute as @a at @s if dimension minecraft:the_nether run scoreboard players set @s var_time_night 0
execute as @a at @s if dimension minecraft:the_nether run scoreboard players set @s var_biome 0


# Check if player is near a campfire
execute as @a at @s if predicate domains:block_checks/near_campfire run scoreboard players remove @s var_modifier 20
# Check if player is near soul campfire
execute as @a at @s if predicate domains:block_checks/near_soul_campfire run scoreboard players add @s var_modifier 20


# Check if player is wearing leather armor
execute as @a at @s if items entity @s armor.body leather_chestplate run scoreboard players remove @s var_modifier 5
execute as @a at @s if items entity @s armor.legs leather_leggings run scoreboard players remove @s var_modifier 5
execute as @a at @s if items entity @s armor.feet leather_boots run scoreboard players remove @s var_modifier 5
execute as @a at @s if items entity @s armor.head leather_helmet run scoreboard players remove @s var_modifier 5