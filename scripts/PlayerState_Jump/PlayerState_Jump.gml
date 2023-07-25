// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Jump(){
	
	if vsp>0{
		sprite_index = sPlayerJumpStab;
		state = PLAYERSTATE.JUMP_STAB;
	}
	
	if(!place_meeting(x, y+1, oWall)){

		if(key_down){
			sprite_index = sPlayerJumpStab;
			state = PLAYERSTATE.JUMP_STAB;
		}
		if(key_attack)
		{
			sprite_index = sPlayerAttack;
			state = PLAYERSTATE.JUMP_ATTACK;
		}	
		if (vsp<=0){
			sprite_index = sPlayerJump;
		}else{
			sprite_index = sPlayerFall;
		}

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

			// Change to sPlayerUturn during deceleration
			sprite_index = sPlayerUturn;
		}

		vsp = vsp + grv;
	
		collision_Horizontal();
		x = x + hsp;
		collision_Vertical();
		y = y + vsp;
	
		image_speed = 1;
		// Change sprite_index if not decelerating
		if (move != 0 || hsp == 0) {
		    if (hsp != 0) image_xscale = sign(hsp);
		}
	}else{
		sprite_index = sPlayerIdle;
		state = PLAYERSTATE.FREE;
	}
}