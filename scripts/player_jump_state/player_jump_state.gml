// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_jump_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// check state
	if (on_ground()) {
		if (hsp != 0) {
			state = states.WALK;	
		} else {
			state = states.IDLE;	
		}
	}
	
	if (attack) {
		state = states.ATTACK;
		image_index = 0;
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}