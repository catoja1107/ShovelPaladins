// In PlayerState_Free()
function PlayerState_Free(){
	
	if invisible_timer>0{
		invisible_timer-=1
	}
	
	if prev_direction!=0&&hsp==0{
		image_xscale = prev_direction;
		prev_direction = 0;
	}

    // Calculate movement
    var move = (attacking || !place_meeting(x, y+1, oWall)) ? 0 : key_right - key_left;
    
    // Check for U-Turn
    if(move != 0 && move != prev_move && prev_move != 0) {
        // Player pressed opposite direction
        sprite_index = sPlayerUturn;
        uTurn = true; // U-turn in progress
    }
    
    // Acceleration
    if(move != 0) {
        hsp += move * acceleration;
        if(abs(hsp) > max_speed) hsp = max_speed * sign(hsp); // Clamp max speed
    }
    
    // Deceleration
    if (move == 0 && hsp != 0) {
        var de = -sign(hsp) * deceleration;
        if(abs(hsp) <= abs(de)) {
            hsp = 0;
            sprite_index = sPlayerIdle; // Player has come to a stop
        } else {
            hsp += de;
        }
    }
    
    // Save current move for next frame
    prev_move = move;

    vsp = vsp + grv;

    // Handle attack
    if (key_attack && place_meeting(x, y+1, oWall)) {
        state = PLAYERSTATE.ATTACK;
    }

    // Handle jump
    if (place_meeting(x, y+1, oWall) && key_jump)
    {	
		var jump_ran = random(2);
		if jump_ran == 2{
			audio_play_sound(jump_01, 1,false, global.sfx_value);
		}else{
			audio_play_sound(jump_02, 1,false, global.sfx_value);
		}
        vsp = jump_vsp;
        state = PLAYERSTATE.JUMP;
    }
	
	if (!place_meeting(x, y+1, oWall)){
        state = PLAYERSTATE.JUMP;
	}
	

    collision_Horizontal();
    x = x + hsp;
    collision_Vertical();
    y = y + vsp;
    
    image_speed = 1;
    if (hsp != 0) image_xscale = sign(hsp);
    
    // Set the running sprite if the player is moving, not U-turning, and the direction of movement matches the input
    if(hsp != 0 && !uTurn) {
        sprite_index = sPlayerRun;
    }
	
	if (hsp==0&&vsp==0){
		sprite_index = sPlayerIdle;
	}

    if(uTurn && move == sign(hsp)) {
        uTurn = false; // U-turn completed
    }
}
