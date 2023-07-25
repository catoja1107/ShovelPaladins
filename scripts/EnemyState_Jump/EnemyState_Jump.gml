// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Jump(){
	sprite_index = sprite_idle;
	
	vsp = vsp + grv;
	
	collision_Horizontal();
    x = x + hsp;
	
    collision_Vertical();
    y = y + vsp;
	
	if(place_meeting(x, y+1, oWall)){
		state = ENEMYSTATE.FREE;
	}
}