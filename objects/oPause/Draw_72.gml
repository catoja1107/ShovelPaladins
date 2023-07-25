
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

if(xx!=origX){
	default_x = default_x+(xx-origX);
	origX=xx;
}

if(yy!=origY){
	default_y = default_y+(yy-origY);
	origY=yy;
}

x= default_x;
y=default_y;