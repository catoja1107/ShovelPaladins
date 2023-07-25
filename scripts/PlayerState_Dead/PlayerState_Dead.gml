// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Dead(){
	if (sprite_index != sPlayerDie)
	{
		audio_play_sound(knight_die, 1,false, global.sfx_value);
		sprite_index = sPlayerDie;
		image_index = 0;
	}
	
	// Deceleration
	if (hsp != 0) {
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
	
	if (hsp != 0) image_xscale = sign(hsp);
	
	

	if (animation_end()) instance_change(oPlayerCoupse,true);
}