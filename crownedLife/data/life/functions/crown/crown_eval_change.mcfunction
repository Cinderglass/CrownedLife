##This function is called when whoever life:crown/crown_eval is currently evaluating is more eligible than the previous candidate
#Removes "crownEval" from previous candidate and adds it to the current candidate
tag @a[tag=crownEval] remove crownEval
tag @s add crownEval
#Changes #dummy crownTime to be equal to the current candidate so that life:crown/crown_eval can use it for comparison
scoreboard players operation #dummy crownTime = @a[tag=crownEval] crownTime