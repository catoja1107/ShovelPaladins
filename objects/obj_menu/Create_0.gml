
room_persistent = false;

global.save_file = "saved_profile.sav";

show_debug_message(global.save_file);

global.user_data = new user_data_struct();

if file_exists(global.save_file){
	//Load
	var user_data = load_json(global.save_file);
	
	global.user_data.load_values(user_data);
	show_debug_message("LOAD FILE BECAUSE FOUND SAVE");
}else{
	save_json(global.user_data, global.save_file);
	show_debug_message("SAVED FILE BECAUSE DOESNT FOUND SAVE");
}

global.money = global.user_data.money;
global.music_value = global.user_data.music;
global.sfx_value = global.user_data.sfx;
global.have_red_armor = global.user_data.have_red_armour;
global.have_gold_armor = global.user_data.have_gold_armour;
global.slimekill = global.user_data.slimekill;

show_debug_message(global.music_value);
show_debug_message(global.sfx_value);
show_debug_message(global.money);

audio_play_sound(menuBackground,1,true, global.music_value);

GooglePlayServices_SignIn();