// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calc_movement(){
	hsp = hsp + (right - left) * walk_spd;
	vsp += global.grav;

	// drag
	hsp = lerp(hsp, 0, drag);

	// stop
	if (abs(hsp) <= 0.1) {
		hsp = 0;	
	}

	// facing
	if (hsp != 0) {
		facing = sign(hsp);	
	}

	// limit speed
	hsp = min(abs(hsp), max_hsp) * facing;
}