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

enum ENEMYSTATE
{
	FREE,
	JUMP,
	HIT,
	DEAD,
	ATTACK,
}
image_index = irandom(10);

