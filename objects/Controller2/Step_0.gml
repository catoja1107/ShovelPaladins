near =		layer_get_id("Background_Near");
stillNear = layer_get_id("Background_Stillnear");
distant =	layer_get_id("Background_Distant");


layer_x(near,			lerp(0,camera_get_view_x(view_camera[0]),0.5));
layer_x(stillNear,		lerp(0,camera_get_view_x(view_camera[0]),0.75));
layer_x(distant,		lerp(0,camera_get_view_x(view_camera[0]),0.85));