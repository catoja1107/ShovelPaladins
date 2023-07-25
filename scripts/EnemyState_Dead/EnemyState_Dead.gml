function EnemyState_Dead() {
	if (sprite_index != sprite_death)
	{

		sprite_index = sprite_death;
		image_index = 0;
	}

	if (animation_end()){
		instance_change(death_object,true);
		
	} 
}
