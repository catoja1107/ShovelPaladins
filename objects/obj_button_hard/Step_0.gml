/// @description Insert description here
// You can write your code in this editor

// obj_easy_button Step Event
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        // Set difficulty to easy
        global.difficulty = "hard";
    }
}

