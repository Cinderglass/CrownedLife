##Puts crowned players on their proper Teams
#Doesn't check if players have crowns since it is only called by crowned players
execute if score @s lives matches 4 run team join CrownedDark @s
execute if score @s lives matches 3 run team join CrownedGreen @s
execute if score @s lives matches 2 run team join CrownedYellow @s