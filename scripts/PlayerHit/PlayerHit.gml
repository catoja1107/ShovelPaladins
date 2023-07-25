function PlayerHit(argument0,argument1 ) {
	var _damage = argument0;	
	if hp>0{
	hp -= _damage;
	flash = true;
	}
	prev_direction = image_xscale;
	
	//After get hit
	if (hp<=0){
		state = PLAYERSTATE.DEATH;
		return false;
	}else{
		ScreenShake(5,10);
		audio_play_sound(knight_hurt, 1,false, global.sfx_value);
		hitNow = true;
		invisible_timer = time_invisible;

		state = PLAYERSTATE.GET_HIT;
		if argument1==-1{
			hsp=-3;
		}else{
			hsp=3;
		}
		vsp=-5;
		return true;
	}
}
