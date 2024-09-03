##First Join
#  Detects if players have not joined before for the first time and grants them 3 lives, then tags them as "joined"
execute as @a[tag=!joined] run function life:first_join

##Dying
#  Detects if a player has died, decrements their lives, and then resets the death counter
execute as @a[scores={deaths=1..},tag=!dead] run function life:life_check

##Color Control
#  Updates the colors of players and makes sure that dead players are invisible
execute as @a[tag=!dead,tag=!crown] run function life:color_update
execute as @a[tag=crown] run function life:crown/crown_color_update

execute as @a[tag=dead,tag=!god] run effect give @s invisibility infinite 0 true

###Boogey Free
#  Detects if the boogeyman killed a non-red player and, if so, removes their boogeyman status as well as giving them a small, temporary buff
execute as @a[scores={kill=1..,redKill=0},tag=boogey] run function life:free_boogey
scoreboard players set @a kill 0
scoreboard players set @a redKill 0

###Change Gamemode
#  Allows dead players to adjust their gamemode without having operator permissions
scoreboard players enable @a creative
gamemode creative @a[scores={creative=1..},tag=dead]
scoreboard players set @a creative 0
scoreboard players enable @a spectator
gamemode spectator @a[scores={spectator=1..},tag=dead]
scoreboard players set @a spectator 0

###Explanation of datapack
#  Lives are tracked via the scoreboard, and players are constantly set to the corresponding color based on their lives.
#  When a player reaches 0 lives, they are moved to the dead team and given a tag which will exclude them from things like boogeyman while allowing them to change gamemode using the trigger commands
#  Dead players are also made invisible

## Boogeymen
#  When it is time to choose a boogeyman each session, run "/function life:boogey_select"
#  The function "life:boogey_select" ensures that there are no boogeymen, picks boogeymen, starts a countdown, and then tells the boogeyman who they are.
#  If there is a boogeyman, it will free them from their curse before selecting
#  One boogeyman is always selected, and then each non-red player has a 5% chance to be a boogeyman. 
#  Boogeymen are tracked by being given the "boogey" tag, and "/function life:who_boogey" will make all the boogeymen whisper to the person running the command
#  The boogeyman curse is being managed manually. A boogie fail should have their lives set to 1 using /scoreboard players set PLAYERNAME lives 1
#  When a boogeyman is freed of their curse, run "/tag PLAYERNAME remove boogey"

#  In case a player needs to be revived, run "/execute as PLAYERNAME run function life:revive"

#  At the start of the game, have all the gods run "/function life:ascend"

## Crowns
#  At the start of the season, give crowns to the selected players using "/tag PLAYERNAME add crown"
#  When a crowned player dies, the server will alert everyone, and then the player who has the most lives will be given their crown
#  In the (common) event of a tie between who has the most lives, the player with the most time alive will be given the crown
#  If a crowned player dies while the next player who *should* be crowned is offline, the server will give the crown to the player next in line
#  Should you want to reevaluate this, once the player is back online, run "/function life:crown/crown_offline_update"
#  This will move the crown to the correct player, removing it from the player who received it incorrectly