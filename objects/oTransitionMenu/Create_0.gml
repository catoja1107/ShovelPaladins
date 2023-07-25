/// @desc Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE_MENU
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE_MENU.INTRO;
percent = 1;
target = room;
