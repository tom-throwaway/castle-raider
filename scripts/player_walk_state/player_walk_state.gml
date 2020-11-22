// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk_state(){
	// GET INPUT
	get_input();
 
	// CALCULATE MOVEMENT
	calc_movement();
	
	// CHECK STATE
	if (hsp == 0) {
		state = states.IDLE;	
	}
	
	// check if falling
	var side = bbox_bottom;
	var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);
	
	if (t1 == VOID && t2 == VOID) {
		state = states.JUMP;
		jumps = jumps_initial;
	}
	
	// attack
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