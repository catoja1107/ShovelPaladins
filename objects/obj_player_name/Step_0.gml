if keyboard_check(10){
 keyboard_virtual_hide();
}

if keyboard_string!=text_input{
	text_input=keyboard_string;
	global.edited_name_str = text_input;
}