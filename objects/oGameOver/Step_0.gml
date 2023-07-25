if global.game_over && global.win {
	image_index = 0;
	tappable = true;
	
	if submited==false{
		var _score_to_turn_gold = 0;
		with (oScoreHealth){
			_score_to_turn_gold = score;
		}

		global.money += round(_score_to_turn_gold);
		show_debug_message(global.money);
		
		global.user_data.update_value("money", global.money);
		
		show_debug_message(global.user_data.money);
		submited=true;
	}
}






