execute as @a[nbt={SleepTimer:100s}] at @s run scoreboard players add @s sleeping 1

execute as @a[nbt={SleepTimer:100s}] at @s run scoreboard players operation @s sleeping_copy = @s sleeping
execute as @a[nbt={SleepTimer:100s}] at @s store result score @s sleeping_seconds run scoreboard players operation @s sleeping_copy /= divide_20 sleeping


execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=0..5}] at @s run title @s actionbar {"text":"||||||||||","color":"gray","bold":true,"italic":true}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=6..11}] at @s run title @s actionbar {"text":"|","color":"green","bold":true,"italic":true,extra:[{"text":"|||||||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=12..17}] at @s run title @s actionbar {"text":"||","color":"green","bold":true,"italic":true,extra:[{"text":"||||||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=18..23}] at @s run title @s actionbar {"text":"|||","color":"green","bold":true,"italic":true,extra:[{"text":"|||||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=24..29}] at @s run title @s actionbar {"text":"||||","color":"green","bold":true,"italic":true,extra:[{"text":"||||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=30..35}] at @s run title @s actionbar {"text":"|||||","color":"green","bold":true,"italic":true,extra:[{"text":"|||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=36..41}] at @s run title @s actionbar {"text":"||||||","color":"green","bold":true,"italic":true,extra:[{"text":"||||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=42..47}] at @s run title @s actionbar {"text":"|||||||","color":"green","bold":true,"italic":true,extra:[{"text":"|||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=48..53}] at @s run title @s actionbar {"text":"||||||||","color":"green","bold":true,"italic":true,extra:[{"text":"||","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=54..59}] at @s run title @s actionbar {"text":"|||||||||","color":"green","bold":true,"italic":true,extra:[{"text":"|","color":"gray","bold":true,"italic":true}]}
execute as @a[nbt={SleepTimer:100s},scores={sleeping_seconds=60}] at @s run title @s actionbar {"text":"||||||||||","color":"green","bold":true,"italic":true}

execute as @a[scores={sleeping=1200}] at @s run effect give @s instant_health 1 10 true
tellraw @a[scores={sleeping=1200}] {"text":"After a good rest you recovered back to full health!","color":"white","italic":true}
execute as @a[scores={sleeping=1200}] at @s run scoreboard players set @s sleeping 0