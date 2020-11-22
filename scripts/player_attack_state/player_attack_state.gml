// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// check state
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed) {
		if (!on_ground) {
			state = states.JUMP;
		} else {
			if (hsp != 0) {
				state = states.WALK;
			} else {
				state = states.IDLE;
			}
		}
	}
	
	// jump
	if (jump) {
		jumped();
		state = states.ATTACK;
	}
	
	// enable smaller jump
	if (vsp < 0 && !jump_held) {
		vsp = max(vsp, jump_spd / jump_dampener);
	}

	// APPLY MOVEMENT
	collision();

	// APPLY ANIMATION
	anim();
}