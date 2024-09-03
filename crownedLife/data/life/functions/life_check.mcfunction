#Manages lives
scoreboard players set @s deaths 0
scoreboard players remove @s lives 1

#I used to have color_update called here, but it's called in life:tick now

###Crown Stuff
#If the dead player had the crown tag, removes it
execute as @s[tag=crown] run function life:crown/crown_slain