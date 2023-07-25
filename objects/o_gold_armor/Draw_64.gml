draw_set_colour(c_white);
draw_set_font(fArcadeBig);


if global.have_gold_armor ==1{
	draw_text(960, 550, "EQUIPPED");
}else if global.have_gold_armor ==2{
	draw_text(960, 550, "UNEQUIPPED");
}else{
	draw_text(960, 550, "$10000");
}

draw_text(970, 290, "+ 10HP");