newX = event_data[?"posX"] + drag_offsetX;
newY = event_data[?"posY"] + drag_offsetY;

if abs(newX-default_x) > limit_X {
	x = default_x + (sign(newX-default_x) * limit_X);
} else {
	x = newX;
}

if abs(newY-default_y) > limit_Y {
	y = default_y + (sign(newY-default_y) * limit_Y);
} else {
	y = newY;
}

dragging = true;
