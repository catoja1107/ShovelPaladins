if (flash)
{
	if (image_index >= 0.2) flash = false;
	shader_set(shWhite);
}

draw_self();
shader_reset();