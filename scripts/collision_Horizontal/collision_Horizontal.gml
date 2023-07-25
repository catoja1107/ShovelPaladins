// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_Horizontal(){
	if (place_meeting(x+hsp, y, oWall))
	{
	    var slopeFound = false;
	    for (var i=1; i<=slopeHeight; i++)
	    {
	        if (!place_meeting(x+hsp, y-i, oWall))
	        {
	            y -= i;
	            slopeFound = true;
	            break;
	        }
	    }
	    if (!slopeFound)
	    {
	        while (!place_meeting(x+sign(hsp), y, oWall))
	        {
	            x = x + sign(hsp);
	        }
	        hsp = 0;
	    }
	}
}