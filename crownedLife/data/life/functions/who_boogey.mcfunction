#Tells the user who ran the command who the boogeymen are
tag @s add admin
execute as @a[tag=boogey] run msg @a[tag=admin] "I am the Boogeyman"
tag @s remove admin