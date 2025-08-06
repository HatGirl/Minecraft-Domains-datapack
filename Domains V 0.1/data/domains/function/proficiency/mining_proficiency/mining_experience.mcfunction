execute as @a[scores={mining_proficiency=..0}] at @s if score @s stone_mined matches 10 run scoreboard players add @s mining_proficiency 1
execute as @a[scores={mining_proficiency=1},tag=!mining_proficiency_one] at @s run function domains:proficiency/mining_proficiency/mining_level_up_displays/mining_level_up_display_one


execute as @a[scores={mining_proficiency=1}] at @s if score @s iron_mined matches 1 run scoreboard players add @s mining_proficiency 1
execute as @a[scores={mining_proficiency=2},tag=!mining_proficiency_two] at @s run function domains:proficiency/mining_proficiency/mining_level_up_displays/mining_level_up_display_two


execute as @a[scores={mining_proficiency=2}] at @s if score @s gold_mined matches 1 run scoreboard players add @s mining_proficiency 1
execute as @a[scores={mining_proficiency=3},tag=!mining_proficiency_three] at @s run function domains:proficiency/mining_proficiency/mining_level_up_displays/mining_level_up_display_three


execute as @a[scores={mining_proficiency=3}] at @s if score @s emerald_mined matches 1 run scoreboard players add @s mining_proficiency 1
execute as @a[scores={mining_proficiency=4},tag=!mining_proficiency_four] at @s run function domains:proficiency/mining_proficiency/mining_level_up_displays/mining_level_up_display_four
