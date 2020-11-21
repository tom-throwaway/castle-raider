// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// check state
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed) {
		if (hsp != 0) {
			state = states.WALK;
		} else {
			state = states.IDLE;
		}
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}