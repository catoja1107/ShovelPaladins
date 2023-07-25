hitNow = false;
frameCount = 0;
flash = false;
state = ENEMYSTATE.FREE;
hp = 8;

hsp = 1;
vsp = 0;
grv = 0.3;
slopeHeight = 1;

value = 30;


sprite_hit = Slime;
sprite_idle = Slime;
sprite_run = Slime;
sprite_death = SlimeDeath;
death_object = oSlimeCorpse;

stun_timer = 0;
limit_stun = 20;
attack_from = -1;
prev_hsp = 0;
prev_vsp = 0;
deceleration = 0.3;