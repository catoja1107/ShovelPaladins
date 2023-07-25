function EnemyHit(argument0,argument1) {
	var _attack_from = argument1;
	var _damage = argument0;
	if (hp<=0){
		return false;
	}
	ScreenShake(3,10);
	hp -= _damage;
	flash = true;
	stun_timer = limit_stun;
	
	
	if (hp > 0)
	{
		attack_from = _attack_from;
		state = ENEMYSTATE.HIT;
		hitNow = true;
	}
	else
	{	
		audio_play_sound(enemy_die, 1,false, global.sfx_value);
		sprite_index = sprite_death;
		DropGems(value, _attack_from);
		state = ENEMYSTATE.DEAD;
	}
	return true;
}
