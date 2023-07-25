draw_set_colour(c_white);
draw_set_font(fArcadeBig);
draw_text(x, y+20, "SCORE: " + string(score));
var _health = 0;
if instance_exists(oPlayer){
	with (oPlayer) _health = hp;
}
draw_text(x+250, y+20, "HEALTH: " + string(_health));