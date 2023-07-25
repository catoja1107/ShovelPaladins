/// @desc Progress the transition

if (mode != TRANS_MODE_MENU.OFF)
{
	if (mode == TRANS_MODE_MENU.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.0005));
	}
	else
	{
		percent = min(1.2,percent + max(((1.2 - percent)/10),0.0005));
	}

	if (percent == 1.2) || (percent == 0)
	{
		game_set_speed(60,gamespeed_fps);
		switch (mode)
		{
			case TRANS_MODE_MENU.INTRO:
			{
				mode = TRANS_MODE_MENU.OFF;
				break;
			}
			case TRANS_MODE_MENU.NEXT:
			{
				mode = TRANS_MODE_MENU.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE_MENU.GOTO:
			{
				mode = TRANS_MODE_MENU.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE_MENU.RESTART:
			{
				game_restart();
				break;
			}
		}	
	}
}
