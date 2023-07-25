/// @description Update buttons
switch(async_load[?"type"])
{	
	case "GooglePlayServices_IsAuthenticated":
		
		if(async_load[?"success"])
		if(async_load[?"isAuthenticated"])
		{
			show_debug_message("Authenticated as: {0}", GooglePlayServices_Player_CurrentID());
			setSignedInMode(true);
			with (obj_achieve) image_alpha = 1;
		}
		else {
			show_debug_message("Not signed-in.")
			setSignedInMode(false);
			with (obj_achieve) image_alpha = 0.2;
			}
		
		break;
}
