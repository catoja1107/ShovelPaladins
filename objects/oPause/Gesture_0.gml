
show_debug_message(pause);

if !pause{

	pause=true;
	instance_deactivate_all(true);
		
	pauseSurf = surface_create(resW,resW);
	surface_set_target(pauseSurf);
	draw_surface(application_surface,0,0);
	surface_reset_target();
		
	if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	pauseSurfBuffer = buffer_create(resW*resH*4, buffer_fixed,1);
	buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	
}
else{
	
	pause=false;
	instance_activate_all();
	if(surface_exists(pauseSurf)) surface_free(pauseSurf);
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
}

