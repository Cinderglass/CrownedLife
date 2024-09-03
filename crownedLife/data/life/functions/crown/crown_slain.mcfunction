title @a title {"text": "A Crowned player has been slain!","color": "gold"}
title @a times 10t 3s 10t
execute as @a run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1 1

#Evaluates the next crowned player
tag @s remove crown
function life:crown/crown_eval