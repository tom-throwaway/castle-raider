// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// check state
	if (hsp != 0) {
		state = states.WALK;	
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}