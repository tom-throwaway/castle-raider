// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_block_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// CHECK STATE
	
	// blocking
	block_check();
	
	// attack
	if (attack) {
		state = states.ATTACK;
		image_index = 0;
	}
	
	if (jump) {
		jumped();
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}