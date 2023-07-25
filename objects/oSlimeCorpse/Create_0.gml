image_speed = 0;
image_index = image_number-1;
vsp = 0;
hsp = 0;
grv = 0.3;
slopeHeight = 0.1;


++global.slimekill;
show_debug_message("Kills: {0}", global.slimekill);
if global.slimekill >= 10 {
	GooglePlayServices_Achievements_Unlock(Achievement1);
}
if global.slimekill >= 25 {
	GooglePlayServices_Achievements_Unlock(Achievement2);
}
if global.slimekill >= 50 {
	GooglePlayServices_Achievements_Unlock(Achievement3);
}
if global.slimekill >= 100 {
	GooglePlayServices_Achievements_Unlock(Achievement4);
}