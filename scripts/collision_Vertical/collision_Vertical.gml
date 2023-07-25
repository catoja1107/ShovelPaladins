function collision_Vertical(){
    var tolerance = 3;
    if (place_meeting(x, y+vsp, oWall))
    {
        while (!place_meeting(x, y+sign(vsp), oWall))
        {
            y = y + sign(vsp);
        }
        vsp = 0;
    }
    else if (!place_meeting(x, y+1, oWall) && !place_meeting(x, y+1+tolerance, oWall))
    {
        var slopeFound = false;
        for (var i=1; i<=slopeHeight; i++)
        {
            if (place_meeting(x, y+i, oWall))
            {
                y += i;
                slopeFound = true;
                break;
            }
        }
        if (!slopeFound)
        {
            vsp = vsp + grv;
        }
    }
}