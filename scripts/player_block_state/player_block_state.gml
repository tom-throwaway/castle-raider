// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_block_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// check state
	if (attack) {
		state = states.ATTACK;
		image_index = 0;
	}
	
	if (block) {
		hsp = 0;
	} else {
		if (hsp != 0) {
			if (!on_ground()) {
				state = states.JUMP;	
			} else {
				state = states.WALK;	
			}
		} else {
			state = states.IDLE;	
		}
	}
	
	if (jump) {
		state = states.JUMP;
		vsp = jump_spd;
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}