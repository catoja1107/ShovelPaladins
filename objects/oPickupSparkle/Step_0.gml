
y = y + vsp;
x = x + hsp;



if image_speed > 0
{
    if image_index > image_number - 1{
		count-=1;
	}
}

if count==0{
	instance_destroy();
}