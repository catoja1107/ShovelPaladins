/// @desc Draw black bars

if (mode != TRANS_MODE.OFF)
{
    draw_set_color(c_black);
    draw_rectangle(0,0,w,percent*h_half,false);  // Top rectangle
    draw_rectangle(0,h,w,h-(percent*h_half),false);  // Bottom rectangle
    draw_rectangle(0,0,percent*w,h,false);  // Left rectangle
    draw_rectangle(w,0,w-(percent*w),h,false);  // Right rectangle
}