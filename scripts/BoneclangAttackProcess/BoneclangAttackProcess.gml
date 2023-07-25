// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BoneclangAttackProcess(argument0, argument1){
	
	if (hp <= 0)
	{
		state = ENEMYSTATE.DEAD;
		return;
	}
	
    //Start of the attack
    if (sprite_index != argument0)
    {
        sprite_index = argument0;
        image_index = 0;
        ds_list_clear(hitByAttack);
    }
    //Use attack hitbox & check for hits
    mask_index = argument1;
    var hitByAttackNow = ds_list_create();
	var attack_from= image_xscale;

    // List of object types to check for collision
    var objectsToCheck = ds_list_create();
    ds_list_add(objectsToCheck, oPlayer); // Add more object types here
	
	var _list_of_player = ["oPlayer"];

    for (var objIndex = 0; objIndex < ds_list_size(objectsToCheck); objIndex++) {
        var objectType = objectsToCheck[| objIndex];
        var hits = instance_place_list(x, y, objectType, hitByAttackNow, false);
        if (hits > 0)
        {
            for (var i = 0; i < hits; i++)
            {
                //if this instance has not yet been hit by this attack, hit it
                var hitID = hitByAttackNow[| i];
                if (ds_list_find_index(hitByAttack,hitID) == -1)
                {
					with oPlayer{
						if invisible_timer==0{
							PlayerHit(2,attack_from);
						}
					}
                }
            }
        }
    }
    ds_list_destroy(hitByAttackNow);
    ds_list_destroy(objectsToCheck);
	mask_index = sBoneclangIdle;
}