
var line_height = 20;


if pre_board!= board{
	switch(board)
	{
		case BOARD.MAP1: with(objLootLocker) LootLockerInitialize("dev_32dac6a9683b4f1888991d40e42dbeaa", "0.0.0.1", "false", "16220"); break;
		case BOARD.MAP2: with(objLootLocker) LootLockerInitialize("dev_32dac6a9683b4f1888991d40e42dbeaa", "0.0.0.1", "false", "16221"); break;
	}
	pre_board=board;
}



if state == LEADERBOARDSTATE.SHOW && global.LootLockerInitialized==true{
	var leaderboard_str = LLHighscoresTopFormatted();
	
	draw_set_color(c_yellow);
	// Set text alignment to center
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fArcade);

	switch(board)
	{
		case BOARD.MAP1: draw_text_ext(265, 50, "Leaderboard Map 1", 60, 400); break;
		case BOARD.MAP2: draw_text_ext(265, 50, "Leaderboard Map 2", 60, 400); break;
	}
	draw_set_font(fnt_menu);
	
	if leaderboard_str = ""{
		draw_set_color(c_white);
		draw_text_ext(240, 80 , "Loading the leaderboard. . .", line_height, 300);
	}else{
		var entries = "";
		var preSpace = false;
		var lenStr = string_length(leaderboard_str);

		for (var i = 1; i < lenStr; i++) {
			var currentChar = string_char_at(leaderboard_str, i);
			if (currentChar == " ") {
			    if (!preSpace) {
			        preSpace = true;
			        entries += currentChar;
			    }
			} else {
			    preSpace = false;
			    entries += currentChar;
			}
		}

		entries = string_split(entries, "\n");

		// Calculate total height of leaderboard and starting y-coordinate
		var total_height = array_length(entries) * line_height;
		var y_offset = 100; // 240 is the screen height

		draw_set_color(c_white);
		// Draw the entries in three columns

		draw_text_ext(135, y_offset - line_height , "#", line_height, 200);
		draw_text_ext(205, y_offset - line_height, "playerID", line_height, 200);
		draw_text_ext(375, y_offset - line_height, "Score", line_height, 200);

		for (var i = 0; i < array_length(entries); i++) {
			var entry = entries[i];
			var y_position = y_offset + i * line_height;

			// Split the entry into three parts: ID, PlayerID, and Score
			var parts = string_split(entry, " ");
			var order = parts[0];
			var playerID;
			var highestScore;

			try {
			    playerID = parts[1];
			    highestScore = parts[2];
			} catch (err) {
			    show_debug_message(err);
			    continue;
			}

			// Draw each part of the entry in a different column
			draw_text_ext(135, y_position, order, line_height, 200);
			draw_text_ext(205, y_position, playerID, line_height, 200);
			draw_text_ext(294, y_position, ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .", line_height , 200);
			draw_text_ext(375, y_position, highestScore, line_height, 200);
		}

		// Reset text alignment to default
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
	}

}else{
	draw_set_color(c_white);
	draw_text_ext(130, 80 , "Trying to connect to server. . .", line_height, 300);
}



