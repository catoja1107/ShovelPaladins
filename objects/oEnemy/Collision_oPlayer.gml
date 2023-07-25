
var _canhit = false;

with(oPlayer){
	_canhit = (invisible_timer==0);
}


if state==ENEMYSTATE.FREE&&_canhit{
	var _x_of_player = oPlayer.x;

	if x <= _x_of_player{
		var _hit_from = 1;
	}else{
		var _hit_from = -1;
	}

	with (oPlayer){
		hitNow=true;
		state = PLAYERSTATE.GET_HIT;
		PlayerHit(2,_hit_from);
	}
}



