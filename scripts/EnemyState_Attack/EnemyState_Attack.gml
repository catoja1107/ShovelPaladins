function EnemyState_Attack() {
	
	switch (object_get_name(object_index))
	{
		case "oBoneclang": 
			BoneclangAttackProcess(sBoneclangAttack,sBoneclangAttackHB); 
			break;
		case "oSlime":break;
	}
	
	vsp+=grv;
	collision_Vertical();
	y+=vsp;
	
	if (animation_end())
	{
		sprite_index = sprite_idle;
		state = ENEMYSTATE.FREE;
	}
	
}
