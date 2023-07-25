/// @description Initialize variables

// ############### LEADERBOARDS ###############

// If we want to incorporate Google Leaderboard
#macro Leaderboard1 "CgkItZrGoIsIEAIQBA"

// ############### ACHIEVEMENTS ###############

// Slimes 10
#macro Achievement1 "CgkItZrGoIsIEAIQAA"

// Slimes 25
#macro Achievement2 "CgkItZrGoIsIEAIQAQ"

// Slimes 50
#macro Achievement3 "CgkItZrGoIsIEAIQAg"

// Slimes 100
#macro Achievement4 "CgkItZrGoIsIEAIQAw"

// No DMG Map 1
#macro Achievement5 "CgkItZrGoIsIEAIQBg"

// No DMG Map 2
#macro Achievement6 "CgkItZrGoIsIEAIQBw"



// Code start here!!
randomize();
// This is a helper function that will enabled and disable the
// room buttons according to the player being signed in to google play.
function setSignedInMode(enable)
{	
	with (obj_achieve) locked = !enable;
}
