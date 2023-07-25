var _value = value;

switch value{
	case 1: audio_play_sound(coin_small_impact, 1, false, global.sfx_value); break;
	case 5: audio_play_sound(coin_small_impact, 1, false, global.sfx_value); break;
	case 10: audio_play_sound(coin_impact, 1, false, global.sfx_value); break;
	case 20: audio_play_sound(coin_impact, 1, false, global.sfx_value); break;
	case 50: audio_play_sound(coin_impact, 1, false, global.sfx_value); break;
	case 200: audio_play_sound(coin, 1, false, global.sfx_value); break;
}

if count==droppableLimit{
	PickupSparkle();
	with (oScoreHealth){
		score+= _value;
	}
	instance_destroy();
}

