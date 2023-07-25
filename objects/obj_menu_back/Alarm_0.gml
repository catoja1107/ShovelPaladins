/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

if keyboard_virtual_status(){
	keyboard_virtual_hide();
}


if global.user_data.music!= global.music_value{
	global.user_data.update_value("music",global.music_value);
}

if global.user_data.sfx!= global.sfx_value{
	global.user_data.update_value("sfx",global.sfx_value);
}

save_json(global.user_data, global.save_file);

room_goto(shovel_menu);
