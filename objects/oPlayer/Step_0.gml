

if os_type== os_windows{
	// Get input
	key_left = (key_left==1) ? 1 : (keyboard_check(vk_left) || keyboard_check(ord("A")));
	key_right = (key_right==1) ? 1 : (keyboard_check(vk_right) || keyboard_check(ord("D")));
	key_down = (key_down==1) ? 1 : (keyboard_check(vk_down) || keyboard_check(ord("S")));
	key_jump = (key_jump==1) ? 1 : (keyboard_check_pressed(vk_space));
	key_attack = (key_attack==1) ? 1 : (keyboard_check(ord("J")));
}




if keyboard_check(ord("R")){
	SlideTransition(TRANS_MODE.RESTART);
}

if keyboard_check(ord("Q")){
	room_goto(shovel_leader);
}



if score_submitable && global.game_over{
	var _score_to_submit = 0;
	with (oScoreHealth) _score_to_submit = score;
	
	if room_get_name(room)=="shovel_map_1"{
		var leaderboard_str = "16220";
	}else{
		var leaderboard_str = "16221";
	}
	LootLockerSubmitScore(leaderboard_str, _score_to_submit);
	GooglePlayServices_Leaderboard_SubmitScore(_score_to_submit);
	_new_rank = LLPlayerRank();
	
	if _new_rank=="1"{
		new_score = true;
	}
	score_submitable=false;
}

// cannot die after gameOver
if new_score{
	invisible_timer = 300;
}


switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
	case PLAYERSTATE.JUMP: PlayerState_Jump(); break;
	case PLAYERSTATE.JUMP_STAB: PlayerState_JumpStab(); break;
	case PLAYERSTATE.JUMP_ATTACK: PlayerState_JumpAttack(); break;
	case PLAYERSTATE.GET_HIT: PlayerState_Hit(); break;
	case PLAYERSTATE.DEATH: global.game_over=true;PlayerState_Dead(); break;
}
	
	
// Reset keys
key_left = 0;
key_right = 0;
key_down = 0;
key_jump = 0;
key_attack = 0;


