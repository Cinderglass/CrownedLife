#Titles
title @a[tag=boogey] title {"text": "You are the BOOGEYMAN!","color": "dark_red"}
title @a[tag=!boogey,tag=!dead] title {"text": "You are not the Boogeyman!","color": "dark_green"}
title @a[tag=dead] title {"text": "A Boogeyman has been selected","color": "white"}
title @a times 10t 3s 10t

#Sounds
execute as @a[tag=boogey] run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1 1
execute as @a[tag=!boogey,tag=!dead] run playsound block.bell.resonate master @s ~ ~ ~ 5 1.5 1
execute as @a[tag=dead] run playsound block.bell.resonate master @s ~ ~ ~ 5 1.5 1

tellraw @a[tag=!boogey] {"text":"The Boogeymen have been selected! They have 3 hours to kill a non-red to free themselves from their curse!","bold":true,"color":"white"}
