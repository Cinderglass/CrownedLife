#Updates the team/color of players and detects when they are eliminated
execute if score @s lives matches 4 run team join aDark @s
execute if score @s lives matches 3 run team join bGreen @s
execute if score @s lives matches 2 run team join cYellow @s
execute if score @s lives matches 1 run team join dRed @s
execute if score @s lives matches 0 run function life:die