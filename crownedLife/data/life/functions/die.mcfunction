#Eliminates players, setting them to creative and making them join the "dead" team, which will keep them invisible
gamemode creative
tag @s add dead
tellraw @a {"text":"A player has been eliminated!","bold":true,"color":"dark_red"}
team join eDead @s