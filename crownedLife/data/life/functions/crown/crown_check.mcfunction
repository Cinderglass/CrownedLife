###Evaluates who gets the next crown
#Uses a dummy score to compare, then changes the evaluation afterwards
execute if score @s[tag=!crown] crownTime >= #dummy crownTime run execute as @s run function life:crown/crown_eval_change