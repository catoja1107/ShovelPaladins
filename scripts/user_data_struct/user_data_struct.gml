function user_data_struct() constructor {

    // SET DEFAULT VALUES FOR VARIABLES THAT YOU WISH TO SAVE - MAKE THESE WHATEVER YOU WANT
    money = 0;
    music = 0.5;
    sfx = 0.5;
	have_red_armour = 0;
	have_gold_armour = 0;
	slimekill = 0;
    // LOAD VALUES

    load_values = function(_data) {

        var load_data = _data;
        var fields    = variable_struct_get_names(load_data);

        for (var i = 0, len = array_length(fields); i < len; i++)
        {
            self[$ fields[i]] = load_data[$ fields[i]];
        }
    }

    // UPDATE VALUE

    update_value = function(_name, _value) {

        self[$ _name] = _value;

        save_json(self, global.save_file);
    }
}