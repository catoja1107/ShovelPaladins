function EnemyState_Free() {
	if hsp != 0 {
		sprite_index = sprite_run;
	}else{
		sprite_index = sprite_idle;
	}
	vsp = vsp + grv;

	collision_Horizontal();
    x = x + hsp;
	
    collision_Vertical();
    y = y + vsp;
	
}
