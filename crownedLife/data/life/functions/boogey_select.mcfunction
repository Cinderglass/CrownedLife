#Randomly tags someone as the boogeyman
execute as @a[tag=boogey] run tag @s remove boogey
# Will only select people who are not boogeymen and are not on their last life or dead
tag @r[tag=!boogey,scores={lives=2..}] add boogey
# After selecting the first boogeyman, each eligible player has a 5% of becoming an extra boogeyman
execute as @a[tag=!boogey,scores={lives=2..}] run execute if predicate life:nat_one run tag @s add boogey

#Countdown/Result
schedule function life:count/count_three 20t
schedule function life:count/count_two 60t
schedule function life:count/count_one 100t
schedule function life:count/count_boogey 160t