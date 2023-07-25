function ProcessAttack(argument0, argument1) {
    if (sprite_index != argument0) {
        sprite_index = argument0;
        image_index = 0;
        ds_list_clear(hitByAttack);
    }
    mask_index = argument1;
    var hitByAttackNow = ds_list_create();
    ds_list_clear(hitByAttackNow);

    var _digging = (argument0 == sPlayerAttack);
    var jumpAble = false;
    var attack_from = image_xscale;

    var objectsToCheck = ds_list_create();
    ds_list_add(objectsToCheck, oSlime, oBoneclang, oDirtPile, oCheckpoint);

    // Now we are using ds_list for _list_of_enemy as well
    var _list_of_enemy = ds_list_create();
    ds_list_add(_list_of_enemy, oSlime, oBoneclang);

    for (var objIndex = 0; objIndex < ds_list_size(objectsToCheck); objIndex++) {
        var objectType = objectsToCheck[| objIndex];
        var hits = instance_place_list(x, y, objectType, hitByAttackNow, false);
        if (hits > 0) {
            for (var i = 0; i < hits; i++) {
                var hitID = hitByAttackNow[| i];
                if (ds_list_find_index(hitByAttack, hitID) == -1) {
                    ds_list_add(hitByAttack, hitID);
                    with (hitID) {
                        if (object_index == oDirtPile && _digging) {
                            DirtPileHit(1, attack_from);
                        } else if (object_index == oCheckpoint && _digging) {
                            audio_play_sound(checkpoint_damage, 1, false, global.sfx_value);
                            audio_play_sound(checkpoint_activate, 1, false, global.sfx_value);
                            hp = 0;
                        } else if (ds_list_find_index(_list_of_enemy, object_index) != -1) {
                            jumpAble = EnemyHit(2, attack_from);
                            audio_play_sound(enemy_gethit, 1, false, global.sfx_value);
                        }
                    }
                    if (state == PLAYERSTATE.JUMP_STAB && jumpAble) {
                        audio_play_sound(knight_dig, 1, false, global.sfx_value);
                        vsp = jump_vsp;
                        state = PLAYERSTATE.JUMP;
                    }
                }
            }
        }
    }
    ds_list_destroy(hitByAttackNow);
    ds_list_destroy(objectsToCheck);
    ds_list_destroy(_list_of_enemy); // Destroy _list_of_enemy as well
    mask_index = sPlayerIdle;
}
