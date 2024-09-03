###Set Up Teams
# Each team is added, given a color, made so they cannot see friendly invisibles, and given a suffix (in the case that it is the team for crowned players)
# Gamemasters, denoted by "aaGod", and dead players are set so they can see friendly invisibles, their nametags are hidden, and they do not cause collision
team add aaGod
team modify aaGod color dark_purple
team modify aaGod deathMessageVisibility hideForOtherTeams
team modify aaGod nametagVisibility never
team modify aaGod collisionRule never

team add aDark
team modify aDark color dark_green
team modify aDark seeFriendlyInvisibles false

team add CrownedDark
team modify CrownedDark color dark_green
team modify CrownedDark seeFriendlyInvisibles false
team modify CrownedDark suffix {"text":" 👑","color":"gold"}

team add bGreen
team modify bGreen color green
team modify bGreen seeFriendlyInvisibles false

team add CrownedGreen
team modify CrownedGreen color green
team modify CrownedGreen seeFriendlyInvisibles false
team modify CrownedGreen suffix {"text":" 👑","color":"gold"}

team add cYellow
team modify cYellow color yellow
team modify cYellow seeFriendlyInvisibles false

team add CrownedYellow
team modify CrownedYellow color yellow
team modify CrownedYellow seeFriendlyInvisibles false
team modify CrownedYellow suffix {"text":" 👑","color":"gold"}

team add dRed
team modify dRed color red
team modify dRed seeFriendlyInvisibles false

team add eDead
team modify eDead color gray
team modify eDead nametagVisibility never
team modify eDead collisionRule never

###Set Up Scorebord Objectives
# Life-related scoreboard objectives
scoreboard objectives add lives dummy
scoreboard objectives add firstJoin dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add kill playerKillCount
scoreboard objectives add redKill teamkill.red
scoreboard objectives add crownDeath dummy

#  Crown Dummies
scoreboard objectives add crownTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add crownColor dummy
scoreboard players set #dummy crownTime 0
scoreboard players set #dummy crownColor 0

#  Triggers for changing gamemode
scoreboard objectives add spectator trigger
scoreboard objectives add creative trigger

###Set Up Gamerules
gamerule keepInventory true
gamerule doInsomnia false
gamerule playersSleepingPercentage 50
gamerule doPatrolSpawning false

###Border Stuff
worldborder set 800

#Alerts the server that the datapack is working
tellraw @a {"text": "Last Life is in effect!"}