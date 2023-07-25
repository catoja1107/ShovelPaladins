hitNow = false;
frameCount = 0;
flash = false;
state = ENEMYSTATE.FREE;
hitByAttack = ds_list_create();

hit_delay = 0;


hp = 8;

hsp = 0;
vsp = 0;
grv = 0.3;
slopeHeight = 1;

value = 149;

image_index = irandom(10);


sprite_hit = sBoneclangIdle;
sprite_idle = sBoneclangIdle;
sprite_run = sBoneclangRun;
sprite_jump = sBoneclangRun;
sprite_death = sBoneclangDeath;
sprite_attack = sBoneclangAttack;



death_object = oBoneclangCorspe;


detect_area = 200;
stun_timer = 0;
limit_stun = 30;
attack_from = -1;
prev_hsp = 0;
prev_vsp = 0;
deceleration = 0.3;