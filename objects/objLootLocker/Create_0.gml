global.playing = false;
global.game_over = false;
global.win = false;
global.music_value = global.music_value; //init bypass for room traversal
if !variable_global_exists("slimekill") {
	global.slimekill = 0;
}

// Attempt sign-in


LootLockerInitialize("dev_32dac6a9683b4f1888991d40e42dbeaa", "0.0.0.1", "false", "16220");
global.player_name = LLPlayerName();
global.edited_name_str = global.player_name;
global.player_current_score = LLPlayerScore();