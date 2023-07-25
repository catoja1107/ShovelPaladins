vsp = vsp + grv;
collision_Horizontal();
x = x + hsp;
collision_Vertical();
y = y + vsp;


switch(hp)
{
	case 5: sprite_index = dirtPile1; break;
	case 4: sprite_index = dirtPile2; break;
	case 3: sprite_index = dirtPile3; break;
	case 2: sprite_index = dirtPile4; break;
	case 1:	sprite_index = dirtPile5; break;
	case 0: instance_destroy(); break;
}
