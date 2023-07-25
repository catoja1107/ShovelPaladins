
var _playerX = 0;

with (oPlayer){
	_playerX = x;
}

if abs(_playerX-x)>47 && state!=ENEMYSTATE.DEAD{
	hsp = sign(_playerX - x);
	image_xscale = sign(hsp);
}else{
	if state!= ENEMYSTATE.DEAD && state!= ENEMYSTATE.HIT &&stun_timer==0{
		state = ENEMYSTATE.ATTACK;
		hsp=0;
	}
}


if abs(_playerX-x)>detect_area{
	hsp = 0;
	state=ENEMYSTATE.FREE;
}


if stun_timer>0{
	stun_timer-=1;
	hsp = 0;
	state = ENEMYSTATE.HIT;
}


switch (state)
{
	case ENEMYSTATE.FREE: EnemyState_Free(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(); break;
	case ENEMYSTATE.JUMP: EnemyState_Jump(); break;
	case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
}


if hsp==0 && place_meeting(x, y+1, oWall) && state!= ENEMYSTATE.DEAD{
	if place_meeting(x-1, y, oWall)||place_meeting(x+1, y, oWall){
		vsp=-7;
		state = ENEMYSTATE.JUMP;
	}
}