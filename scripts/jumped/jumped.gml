// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jumped(){
	// Standard jump off the ground
	if (on_ground()) {
		jumps = jumps_initial;	
	}
	
	if (jumps > 0) {
		state = states.JUMP;
		vsp = jump_spd;
		jumps -= 1;
		jump_dust();
	}
}