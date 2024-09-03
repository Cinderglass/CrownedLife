tag @s remove boogey
title @s title {"text": "You are CURED!","color": "green"}
#Gives the boogeyman buffs for a few seconds
effect give @s resistance 5 3 false
effect give @s regeneration 5 3 false
effect give @s saturation 1 0 true
#Sound effect
playsound block.beacon.power_select master @s ~ ~ ~ 5 1.5 1