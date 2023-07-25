function PlayerState_Attack() {
	
	ProcessAttack(sPlayerAttack,sPlayerAttackHB);
	
	if (animation_end()||state==PLAYERSTATE.GET_HIT)
	{
		sprite_index = sPlayerIdle;
		state = PLAYERSTATE.FREE;
	}
}
