##Figures out who should get the next crown based on their lives and then their time_since_death
#The tag "crownEval" is used to denote who is the current candidate to get the next crown

#  Resets any variables that might not have been reset since last evaluation
#Removes "crownEval" from the last evaluated player
tag @a[tag=crownEval] remove crownEval

#Rests the scoreboard for the dummies that are used for comparison

#This is used for comparing the time_since_death of the player currently being evaluated and is set by #crown_eval_change
scoreboard players set #dummy crownTime 0
#This is used to know when any eligible player of any given amount of lives has been found so that players with a lower amount of lives are not evaluated
scoreboard players set #dummy crownColor 0

#  Evaluates the next crowned player
#This compares how long every player with 4 lives who does not have a crown has been alive, and gives the tag "crownEval" to the player who has been alive the longest
#If it finds any eligible player, #dummy crownColor is set to 1, which lets the next functions know that a player of a higher color has been found and to stop evaluating players
execute as @a[scores={lives=4},tag=!crown] run execute if score @s[tag=!crown] crownTime >= #dummy crownTime run execute as @s run function life:crown/crown_eval_change
execute as @a[tag=crownEval] run scoreboard players set #dummy crownColor 1
#If no eligible player with 4 lives is found, it moves on to the players with 3 lives, so on and so forth
#Players with 1 life are not eligible for crown, so they are never evaluated. If no eligible players are found, no crowns are given.
execute if score #dummy crownColor matches 0 run execute as @a[scores={lives=3},tag=!crown] run execute if score @s[tag=!crown] crownTime >= #dummy crownTime run execute as @s run function life:crown/crown_eval_change
execute as @a[tag=crownEval] run scoreboard players set #dummy crownColor 1

execute if score #dummy crownColor matches 0 run execute as @a[scores={lives=2},tag=!crown] run execute if score @s[tag=!crown] crownTime >= #dummy crownTime run execute as @s run function life:crown/crown_eval_change

#After evaluation is done, crowns the evaluated player
execute as @a[tag=crownEval] run tag @s add crown