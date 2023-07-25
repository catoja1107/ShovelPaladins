function EnemyState_Hit() {

	if (hitNow)
	{
		
		prev_hsp = hsp;
		prev_vsp = vsp;
		
		vsp = -2;
		hsp = attack_from*3;
		
		
		sprite_index = sprite_idle;
		image_index = 0;
		hitNow = false;
		frameCount = 0;
	}

	frameCount++;
	if (frameCount > 20) 
	{
		frameCount = 0;
		hsp = prev_hsp;
		vsp = prev_vsp;
		state = ENEMYSTATE.FREE;
	}else{
		vsp = vsp + grv;
		
		
		if (hsp != 0) {
		    var de = -sign(hsp) * deceleration;
		    if(abs(hsp) <= abs(de)) {
		        hsp = 0;
		    } else {
		        hsp += de;
		    }
		}
		
		collision_Horizontal();
	    x = x + hsp;
	
	    collision_Vertical();
	    y = y + vsp;
	
	}
}
