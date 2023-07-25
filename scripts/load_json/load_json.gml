// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_json(argument0){
	var _name = argument0;
	
    var buffer = buffer_load(_name);

    if (buffer != -1)
    {
        var json_string = buffer_read(buffer, buffer_string);

        buffer_delete(buffer);

        return json_parse(json_string);
    }
    else
    {
        return undefined;
    }
}