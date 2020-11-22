// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// CHECK STATE
	if (hsp != 0) {
		state = states.WALK;	
	}
	if (attack) {
		state = states.ATTACK;
		image_index = 0;
	}
	
	if (jump) {
		jumped();
	}
	
	if (block) {
		state = states.BLOCK;
		hsp = 0;
	}
	
	// crouch
	if (down) {
		state = states.CROUCH;
		hsp = 0;
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}