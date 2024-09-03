#Moves players from the dead team to the alive team and moves them to spawn
scoreboard players set @s lives 1
tag @s remove dead
effect clear @s invisibility
#NOTE: The below coordinates need to be changed depending on the seed so that players are not spawned in air or in the ground
tp @s 0 64 0
playsound item.totem.use master @s
gamemode survival @s
function life:color_update