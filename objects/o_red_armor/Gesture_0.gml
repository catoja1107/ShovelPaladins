if global.money >= 5000 && global.have_red_armor==0{
	global.money-=5000;
	global.have_red_armor = 1;
	global.user_data.update_value("have_red_armor",1);
	audio_play_sound(confirm,1,false,global.sfx_value);
	save_json(global.user_data, global.save_file);
}else{
	if global.have_red_armor==1{
		global.have_red_armor = 2;
		global.user_data.update_value("have_red_armor",2);
		audio_play_sound(confirm,1,false,global.sfx_value);
		save_json(global.user_data, global.save_file);
	}else if global.have_red_armor==2{
		global.have_red_armor = 1;
		global.user_data.update_value("have_red_armor",1);
		audio_play_sound(confirm,1,false,global.sfx_value);
		save_json(global.user_data, global.save_file);
	}else{
		audio_play_sound(menu_back,1,false,global.sfx_value);
	}
}

