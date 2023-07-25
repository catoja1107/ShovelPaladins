// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_json(argument0,argument1){
	var _data = argument0;
	var _name = argument1;
    var json_string = json_stringify(_data);
    var buffer      = buffer_create(string_byte_length(json_string) + 1, buffer_fixed, 1);
    buffer_write(buffer, buffer_string, json_string);
    buffer_save(buffer, _name);
    buffer_delete(buffer);
}