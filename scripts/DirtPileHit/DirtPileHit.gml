// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DirtPileHit(argument0,argument1){
	var _damage = argument0;
	var _attack_from = argument1;
	if (hp<=0){
		return false;
	}
	hp -= _damage;

	audio_play_sound(knight_digpile, 1,false, global.sfx_value);

	
	with(instance_create_layer(x,y,"Player",oDirtPieUtil)){
		vsp=-3;
		hsp=1*_attack_from;
	}
	with(instance_create_layer(x,y,"Player",oDirtPieUtil)){
		vsp=-3;
		hsp=2*_attack_from;
	}
	with(instance_create_layer(x,y,"Player",oDirtPieUtil)){
		vsp=-3;
		hsp=3*_attack_from;
	}
	with(instance_create_layer(x,y,"Player",oDirtPieUtil)){
		vsp=-3;
		hsp=4*_attack_from;
	}
	
	DropGems(value[hp], _attack_from);
	
	

	if (hp > 0)
	{
		hitNow = true;
	}
	return true;
}