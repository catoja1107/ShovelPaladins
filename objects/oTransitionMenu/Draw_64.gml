/// @desc Draw black bars

if (mode != TRANS_MODE_MENU.OFF)
{
    draw_set_color(c_black);
    draw_rectangle(0,0,percent*w,h,false);  // Left rectangle
}