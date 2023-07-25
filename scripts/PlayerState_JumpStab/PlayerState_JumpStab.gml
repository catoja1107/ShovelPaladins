// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_JumpStab(){
	image_speed = 1;

	ProcessAttack(sPlayerJumpStab,sPlayerJumpStabHB);
	
	if (!place_meeting(x, y+1, oWall)){
		// Calculate movement
		if (!place_meeting(x, y+1, oWall)){
			var move = key_right - key_left;
			// Acceleration
			hsp += move * acceleration;
			if(abs(hsp) > max_speed) hsp = max_speed * sign(hsp); // Clamp max speed
		}else{
			var move = (attacking) ? 0 : key_right - key_left;
			hsp += move * acceleration;
			if(abs(hsp) > max_speed) hsp = max_speed * sign(hsp); // Clamp max speed
		}

		// Deceleration
		if (move == 0 && hsp != 0) {
			var de = -sign(hsp) * deceleration;
			if(abs(hsp) <= abs(de)) hsp = 0;
			else hsp += de;
		}

		vsp = vsp + grv;
	
		collision_Horizontal();
		x = x + hsp;
		collision_Vertical();
		y = y + vsp;
	
	
		image_speed = 1;
		image_index = (sign(vsp) > 0) ? 1 : 0;
	}else{
		sprite_index = sPlayerIdle;
		state = PLAYERSTATE.FREE;
	}
}