draw_set_colour(c_white);
draw_set_font(fArcadeBig);


if global.have_red_armor ==1{
	draw_text(460, 550, "EQUIPPED");
}else if global.have_red_armor ==2{
	draw_text(460, 550, "UNEQUIPPED");
}else{
	draw_text(460, 550, "$5000");
}

draw_text(470, 290, "+ 5HP");

