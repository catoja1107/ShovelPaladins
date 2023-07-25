key_left = 0;
key_right = 0;
key_down = 0;
key_jump = 0;
key_attack = 0;
value = 0

global.game_over = false;
score_submitable = true;

new_score =false;

acceleration=0.5;
deceleration=0.6;
mvspeed = 1;
max_speed=3;

jump_vsp=-8;

hsp = 0;
vsp = 0;
grv = 0.22;

attackSpeed = 0.3; // This is the speed at which you can attack. Lower values will result in faster attacks.
attackCooldown = 1.5; // This is a counter that will decrease over time until it reaches 0, at which point you can attack again.
attacking = false; // This will track whether or not the player is currently attacking.
attackingAir = false;
slopeHeight = 10;
audio_stop_sound(menuBackground);
audio_play_sound(map1Play, 1, true, global.music_value)

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
uTurn = false;
prev_move = 0;

	
enum PLAYERSTATE
{
	FREE,
	ATTACK,
	JUMP,
	JUMP_STAB,
	JUMP_ATTACK,
	GET_HIT,
	DEATH
}

slopeHeight = 5;

audio_play_sound(relaxing, 1, true)


global.win=false;
hp = 10;
if global.have_red_armor=1{
	hp+=5;
}
if global.have_gold_armor=1{
	hp+=10;
}


hitNow = false;
flash=false;
frameCount = 0;
invisible_timer = 0;
time_invisible = 22;
prev_direction = 1;

room_persistent = false;
