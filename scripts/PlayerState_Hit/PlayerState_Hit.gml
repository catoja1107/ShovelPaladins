// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Hit(){
	
	var decelration_Hit = 0.1;
	
	if (state == PLAYERSTATE.DEATH) {
		return;
	}
	
	if (hitNow)
	{
		sprite_index = sPlayerGetHit;
		image_index = 0;
		frameCount = 0;
	}

	vsp = vsp + grv;
	
	collision_Horizontal();
	x = x + hsp;
	collision_Vertical();
	y = y + vsp;
	
	image_speed = 1;
	
	if (hsp != 0) image_xscale = -sign(hsp)

	
	hitNow = false;
	
	frameCount++;
	if (frameCount > 20) 
	{
		frameCount = 0;
		sprite_index= sPlayerIdle;
		
		state = PLAYERSTATE.FREE;
	}
		
}