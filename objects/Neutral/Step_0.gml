if view_current == 0
{
    var xx = camera_get_view_x(view_camera[0]);
    var yy = camera_get_view_y(view_camera[0]);
}
else
{
    var xx = camera_get_view_x(view_camera[1]);
    var yy = camera_get_view_y(view_camera[1]);
}

if(xx != origX) {
    var deltaX = xx - origX;
    default_x += deltaX;
    origX = xx;
    
    if(dragging) {
        x += deltaX;
    } else {
        x = default_x;
    }
}

if(yy != origY) {
    var deltaY = yy - origY;
    default_y += deltaY;
    origY = yy;
    
    if(dragging) {
        y += deltaY;
    } else {
        y = default_y;
    }
}
