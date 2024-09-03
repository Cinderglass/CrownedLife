###In the case of a player being offline who should have been crowned when a player died, this will reevaluate the most recent crowned player when called
#  This function is called manually by admins
tag @a[tag=crownEval] remove crown
function life:crown/crown_eval