
vsp = vsp + grv;

// Deceleration
if (hsp != 0) {
    var de = -sign(hsp) * deceleration;
    if(abs(hsp) <= abs(de)) {
        hsp = 0;
    } else {
        hsp += de;
    }
}


collision_Horizontal();
if(vsp!=0){
	x = x + hsp;
}
collision_Vertical();
y = y + vsp;


switch value{
	case 1: sprite_index=gem1; break;
	case 5: sprite_index=gem5; break;
	case 10: sprite_index=gem10; break;
	case 20: sprite_index=gem20; break;
	case 50: sprite_index=gem50; break;
	case 200: sprite_index=gem200; break;
}


if count<droppableLimit{
	count+=1;
}


