vsp = vsp + grv;
collision_Horizontal();
x = x + hsp;
collision_Vertical();
y = y + vsp;

if hp<=0 && !broken {
	broken=true;
	show_debug_message("NICEEE")
	var _xpos = x;
	var _ypos = y;
	
	with(instance_create_layer(x,y,"Enemies",oCheckpointUtil)){
		x = _xpos;
		y = _ypos-14;
	}
	
	if hp >= 10 && room == shovel_map_1 {
		GooglePlayServices_Achievements_Unlock(Achievement5);
	}
	if hp >= 10 && room == shovel_map_2 {
		GooglePlayServices_Achievements_Unlock(Achievement6);
	}
	
	global.game_over = true;
	global.win = true;
}